<?php

namespace Mittwald\Typo3Forum\ViewHelpers\Authentication;

/*                                                                      *
 *  COPYRIGHT NOTICE                                                    *
 *                                                                      *
 *  (c) 2015 Mittwald CM Service GmbH & Co KG                           *
 *           All rights reserved                                        *
 *                                                                      *
 *  This script is part of the TYPO3 project. The TYPO3 project is      *
 *  free software; you can redistribute it and/or modify                *
 *  it under the terms of the GNU General Public License as published   *
 *  by the Free Software Foundation; either version 2 of the License,   *
 *  or (at your option) any later version.                              *
 *                                                                      *
 *  The GNU General Public License can be found at                      *
 *  http://www.gnu.org/copyleft/gpl.html.                               *
 *                                                                      *
 *  This script is distributed in the hope that it will be useful,      *
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of      *
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the       *
 *  GNU General Public License for more details.                        *
 *                                                                      *
 *  This copyright notice MUST APPEAR in all copies of the script!      *
 *                                                                      */

use Mittwald\Typo3Forum\Domain\Model\AccessibleInterface;
use Mittwald\Typo3Forum\Domain\Model\Forum\Access;
use Mittwald\Typo3Forum\Domain\Repository\User\FrontendUserRepository;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Object\ObjectManager;
use TYPO3Fluid\Fluid\Core\Rendering\RenderingContextInterface;
use TYPO3Fluid\Fluid\Core\ViewHelper\AbstractConditionViewHelper;

/**
 *
 * ViewHelper that renders its contents if the current user has access to a
 * certain operation on a certain object.
 */
class IfAccessViewHelper extends AbstractConditionViewHelper
{

    /**
     * The frontend user repository.
     *
     * @var \Mittwald\Typo3Forum\Domain\Repository\User\FrontendUserRepository
     * @inject
     */
    protected $frontendUserRepository;

    /**
     * @return void
     * @throws \TYPO3\CMS\Fluid\Core\ViewHelper\Exception
     */
    public function initializeArguments()
    {
        parent::initializeArguments();
        $this->registerArgument('object', AccessibleInterface::class, 'The target object to check access for', true);
        $this->registerArgument('accessType', 'string', 'See Access::TYPE_* constants', false, Access::TYPE_READ);
    }

    /**
     * Evaluates the condition.
     *
     * @param array $arguments
     * @param RenderingContextInterface $renderingContext
     *
     * @return bool The ViewHelper contents if the user has access to the specified operation.
     */
    public static function verdict(array $arguments, RenderingContextInterface $renderingContext)
    {
        /* @var $objManager ObjectManager */
        $objManager = GeneralUtility::makeInstance(ObjectManager::class);
        /* @var $feUserRepo FrontendUserRepository */
        $feUserRepo = $objManager->get(FrontendUserRepository::class);

        return $arguments['object']->checkAccess($feUserRepo->findCurrent(), $arguments['accessType']);
    }
}

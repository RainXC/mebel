<?php
namespace core\modules\statuses;
class StatusObject extends \core\modules\base\ModuleObject
{
	protected $configClass = '\core\modules\statuses\StatusConfig';
	
	function __construct($objectId, $configObject)
	{
		parent::__construct($objectId, new $this->configClass($configObject));
	}

}
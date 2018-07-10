<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Preview\Studio\Flow;

use Twilio\Options;
use Twilio\Values;

/**
 * PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
 */
abstract class EngagementOptions {
    /**
     * @param string $parameters The parameters
     * @return CreateEngagementOptions Options builder
     */
    public static function create($parameters = Values::NONE) {
        return new CreateEngagementOptions($parameters);
    }
}

class CreateEngagementOptions extends Options {
    /**
     * @param string $parameters The parameters
     */
    public function __construct($parameters = Values::NONE) {
        $this->options['parameters'] = $parameters;
    }

    /**
     * The parameters
     * 
     * @param string $parameters The parameters
     * @return $this Fluent Builder
     */
    public function setParameters($parameters) {
        $this->options['parameters'] = $parameters;
        return $this;
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        $options = array();
        foreach ($this->options as $key => $value) {
            if ($value != Values::NONE) {
                $options[] = "$key=$value";
            }
        }
        return '[Twilio.Preview.Studio.CreateEngagementOptions ' . implode(' ', $options) . ']';
    }
}
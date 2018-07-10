<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Wireless\V1\Sim;

use Twilio\Exceptions\TwilioException;
use Twilio\InstanceResource;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
 * 
 * @property string simSid
 * @property string accountSid
 * @property array period
 * @property array commands
 * @property array data
 */
class UsageRecordInstance extends InstanceResource {
    /**
     * Initialize the UsageRecordInstance
     * 
     * @param \Twilio\Version $version Version that contains the resource
     * @param mixed[] $payload The response payload
     * @param string $simSid The sim_sid
     * @return \Twilio\Rest\Wireless\V1\Sim\UsageRecordInstance 
     */
    public function __construct(Version $version, array $payload, $simSid) {
        parent::__construct($version);

        // Marshaled Properties
        $this->properties = array(
            'simSid' => Values::array_get($payload, 'sim_sid'),
            'accountSid' => Values::array_get($payload, 'account_sid'),
            'period' => Values::array_get($payload, 'period'),
            'commands' => Values::array_get($payload, 'commands'),
            'data' => Values::array_get($payload, 'data'),
        );

        $this->solution = array('simSid' => $simSid, );
    }

    /**
     * Magic getter to access properties
     * 
     * @param string $name Property to access
     * @return mixed The requested property
     * @throws TwilioException For unknown properties
     */
    public function __get($name) {
        if (array_key_exists($name, $this->properties)) {
            return $this->properties[$name];
        }

        if (property_exists($this, '_' . $name)) {
            $method = 'get' . ucfirst($name);
            return $this->$method();
        }

        throw new TwilioException('Unknown property: ' . $name);
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        return '[Twilio.Wireless.V1.UsageRecordInstance]';
    }
}
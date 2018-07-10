<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Fax\V1;

use Twilio\Deserialize;
use Twilio\Exceptions\TwilioException;
use Twilio\InstanceResource;
use Twilio\Options;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
 * 
 * @property string sid
 * @property string accountSid
 * @property string from
 * @property string to
 * @property string quality
 * @property string mediaSid
 * @property string mediaUrl
 * @property integer numPages
 * @property integer duration
 * @property string status
 * @property string direction
 * @property string apiVersion
 * @property string price
 * @property string priceUnit
 * @property \DateTime dateCreated
 * @property \DateTime dateUpdated
 * @property array links
 * @property string url
 */
class FaxInstance extends InstanceResource {
    protected $_media = null;

    /**
     * Initialize the FaxInstance
     * 
     * @param \Twilio\Version $version Version that contains the resource
     * @param mixed[] $payload The response payload
     * @param string $sid A string that uniquely identifies this fax.
     * @return \Twilio\Rest\Fax\V1\FaxInstance 
     */
    public function __construct(Version $version, array $payload, $sid = null) {
        parent::__construct($version);

        // Marshaled Properties
        $this->properties = array(
            'sid' => Values::array_get($payload, 'sid'),
            'accountSid' => Values::array_get($payload, 'account_sid'),
            'from' => Values::array_get($payload, 'from'),
            'to' => Values::array_get($payload, 'to'),
            'quality' => Values::array_get($payload, 'quality'),
            'mediaSid' => Values::array_get($payload, 'media_sid'),
            'mediaUrl' => Values::array_get($payload, 'media_url'),
            'numPages' => Values::array_get($payload, 'num_pages'),
            'duration' => Values::array_get($payload, 'duration'),
            'status' => Values::array_get($payload, 'status'),
            'direction' => Values::array_get($payload, 'direction'),
            'apiVersion' => Values::array_get($payload, 'api_version'),
            'price' => Values::array_get($payload, 'price'),
            'priceUnit' => Values::array_get($payload, 'price_unit'),
            'dateCreated' => Deserialize::dateTime(Values::array_get($payload, 'date_created')),
            'dateUpdated' => Deserialize::dateTime(Values::array_get($payload, 'date_updated')),
            'links' => Values::array_get($payload, 'links'),
            'url' => Values::array_get($payload, 'url'),
        );

        $this->solution = array('sid' => $sid ?: $this->properties['sid'], );
    }

    /**
     * Generate an instance context for the instance, the context is capable of
     * performing various actions.  All instance actions are proxied to the context
     * 
     * @return \Twilio\Rest\Fax\V1\FaxContext Context for this FaxInstance
     */
    protected function proxy() {
        if (!$this->context) {
            $this->context = new FaxContext($this->version, $this->solution['sid']);
        }

        return $this->context;
    }

    /**
     * Fetch a FaxInstance
     * 
     * @return FaxInstance Fetched FaxInstance
     */
    public function fetch() {
        return $this->proxy()->fetch();
    }

    /**
     * Update the FaxInstance
     * 
     * @param array|Options $options Optional Arguments
     * @return FaxInstance Updated FaxInstance
     */
    public function update($options = array()) {
        return $this->proxy()->update($options);
    }

    /**
     * Deletes the FaxInstance
     * 
     * @return boolean True if delete succeeds, false otherwise
     */
    public function delete() {
        return $this->proxy()->delete();
    }

    /**
     * Access the media
     * 
     * @return \Twilio\Rest\Fax\V1\Fax\FaxMediaList 
     */
    protected function getMedia() {
        return $this->proxy()->media;
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
        $context = array();
        foreach ($this->solution as $key => $value) {
            $context[] = "$key=$value";
        }
        return '[Twilio.Fax.V1.FaxInstance ' . implode(' ', $context) . ']';
    }
}
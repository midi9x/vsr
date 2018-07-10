<?php

/**
 * This code was generated by
 * \ / _    _  _|   _  _
 * | (_)\/(_)(_|\/| |(/_  v1.0.0
 * /       /
 */

namespace Twilio\Rest\Preview\Understand\Assistant\Intent;

use Twilio\ListResource;
use Twilio\Values;
use Twilio\Version;

/**
 * PLEASE NOTE that this class contains preview products that are subject to change. Use them with caution. If you currently do not have developer preview access, please contact help@twilio.com.
 */
class FieldList extends ListResource {
    /**
     * Construct the FieldList
     * 
     * @param Version $version Version that contains the resource
     * @param string $assistantSid The assistant_sid
     * @param string $intentSid The intent_sid
     * @return \Twilio\Rest\Preview\Understand\Assistant\Intent\FieldList 
     */
    public function __construct(Version $version, $assistantSid, $intentSid) {
        parent::__construct($version);

        // Path Solution
        $this->solution = array('assistantSid' => $assistantSid, 'intentSid' => $intentSid, );

        $this->uri = '/Assistants/' . rawurlencode($assistantSid) . '/Intents/' . rawurlencode($intentSid) . '/Fields';
    }

    /**
     * Streams FieldInstance records from the API as a generator stream.
     * This operation lazily loads records as efficiently as possible until the
     * limit
     * is reached.
     * The results are returned as a generator, so this operation is memory
     * efficient.
     * 
     * @param int $limit Upper limit for the number of records to return. stream()
     *                   guarantees to never return more than limit.  Default is no
     *                   limit
     * @param mixed $pageSize Number of records to fetch per request, when not set
     *                        will use the default value of 50 records.  If no
     *                        page_size is defined but a limit is defined, stream()
     *                        will attempt to read the limit with the most
     *                        efficient page size, i.e. min(limit, 1000)
     * @return \Twilio\Stream stream of results
     */
    public function stream($limit = null, $pageSize = null) {
        $limits = $this->version->readLimits($limit, $pageSize);

        $page = $this->page($limits['pageSize']);

        return $this->version->stream($page, $limits['limit'], $limits['pageLimit']);
    }

    /**
     * Reads FieldInstance records from the API as a list.
     * Unlike stream(), this operation is eager and will load `limit` records into
     * memory before returning.
     * 
     * @param int $limit Upper limit for the number of records to return. read()
     *                   guarantees to never return more than limit.  Default is no
     *                   limit
     * @param mixed $pageSize Number of records to fetch per request, when not set
     *                        will use the default value of 50 records.  If no
     *                        page_size is defined but a limit is defined, read()
     *                        will attempt to read the limit with the most
     *                        efficient page size, i.e. min(limit, 1000)
     * @return FieldInstance[] Array of results
     */
    public function read($limit = null, $pageSize = null) {
        return iterator_to_array($this->stream($limit, $pageSize), false);
    }

    /**
     * Retrieve a single page of FieldInstance records from the API.
     * Request is executed immediately
     * 
     * @param mixed $pageSize Number of records to return, defaults to 50
     * @param string $pageToken PageToken provided by the API
     * @param mixed $pageNumber Page Number, this value is simply for client state
     * @return \Twilio\Page Page of FieldInstance
     */
    public function page($pageSize = Values::NONE, $pageToken = Values::NONE, $pageNumber = Values::NONE) {
        $params = Values::of(array(
            'PageToken' => $pageToken,
            'Page' => $pageNumber,
            'PageSize' => $pageSize,
        ));

        $response = $this->version->page(
            'GET',
            $this->uri,
            $params
        );

        return new FieldPage($this->version, $response, $this->solution);
    }

    /**
     * Retrieve a specific page of FieldInstance records from the API.
     * Request is executed immediately
     * 
     * @param string $targetUrl API-generated URL for the requested results page
     * @return \Twilio\Page Page of FieldInstance
     */
    public function getPage($targetUrl) {
        $response = $this->version->getDomain()->getClient()->request(
            'GET',
            $targetUrl
        );

        return new FieldPage($this->version, $response, $this->solution);
    }

    /**
     * Create a new FieldInstance
     * 
     * @param string $fieldType The field_type
     * @param string $uniqueName The unique_name
     * @return FieldInstance Newly created FieldInstance
     */
    public function create($fieldType, $uniqueName) {
        $data = Values::of(array('FieldType' => $fieldType, 'UniqueName' => $uniqueName, ));

        $payload = $this->version->create(
            'POST',
            $this->uri,
            array(),
            $data
        );

        return new FieldInstance(
            $this->version,
            $payload,
            $this->solution['assistantSid'],
            $this->solution['intentSid']
        );
    }

    /**
     * Constructs a FieldContext
     * 
     * @param string $sid The sid
     * @return \Twilio\Rest\Preview\Understand\Assistant\Intent\FieldContext 
     */
    public function getContext($sid) {
        return new FieldContext(
            $this->version,
            $this->solution['assistantSid'],
            $this->solution['intentSid'],
            $sid
        );
    }

    /**
     * Provide a friendly representation
     * 
     * @return string Machine friendly representation
     */
    public function __toString() {
        return '[Twilio.Preview.Understand.FieldList]';
    }
}
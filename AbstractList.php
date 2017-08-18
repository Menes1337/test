<?php

namespace ThreeDCart\Primitive;

abstract class AbstractList
{
    /** @var array */
    protected $list;
    
    /**
     * @param array $list
     */
    public function __construct(array $list = [])
    {
        $this->list = $list;
    }
    
    /**
     * @param mixed $entry
     */
    protected function addEntry($entry)
    {
        $this->list[] = $entry;
    }
    
    public function clear()
    {
        $this->list = [];
    }
    
    /**
     * @return bool
     */
    public function isEmpty()
    {
        return empty($this->list);
    }
    
    /**
     * @return int
     */
    final public function count()
    {
        return count($this->list);
    }
}

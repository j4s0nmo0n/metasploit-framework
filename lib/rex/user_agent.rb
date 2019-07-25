# -*- coding: binary -*-

#
# A helper module for using and referencing comming user agent strings.
#
module Rex::UserAgent

  #
  # List from https://techblog.willshouse.com/2012/01/03/most-common-user-agents/
  # This article was updated on July 11th 2015. It's probably worth updating this
  # list over time.
  #
  # This list is in the order of most common to least common.
  #
  COMMON_AGENTS = [
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36' 
    
  ]

  #
  # Pick a random agent from the common agent list.
  #
  def self.random
    COMMON_AGENTS.sample
  end

  #
  # Choose the agent with the shortest string (for use in payloads)
  #
  def self.shortest
    @@shortest_agent ||= COMMON_AGENTS.min { |a, b| a.size <=> b.size }
  end

  #
  # Choose the most frequent user agent
  #
  def self.most_common
    COMMON_AGENTS[0]
  end

end


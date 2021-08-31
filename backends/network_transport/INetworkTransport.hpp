#pragma once
#include <string>
#include <functional>
#include <chrono>

struct DataRequest;

class INetworkTransport
{
public:
	virtual ~INetworkTransport() = default;
};

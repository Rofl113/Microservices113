#pragma once
#include <stddef.h>


struct DataRequest
{
	const size_t m_length = 0;          // размер тела запроса
	const void* m_data    = nullptr;    // указатель на поток байт
};

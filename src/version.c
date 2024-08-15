#include <predict/predict.h>

int predict_version_major( void )
{
    return PREDICT_VERSION_MAJOR;
}

int predict_version_minor( void )
{
    return PREDICT_VERSION_MINOR;
}

int predict_version_patch( void )
{
    return PREDICT_VERSION_PATCH;
}

int predict_version( void )
{
    return PREDICT_VERSION;
}

char * predict_version_string( void )
{
    return PREDICT_VERSION_STRING;
}

const { xsltProcess: process, xmlParse: parse } = require( 'xslt-processor' );
const { promises: fs } = require( 'fs' );


( async () =>
{
    const html = process(
        parse( await getContent( `${ __dirname }/test.xml` ) ),
        parse( await getContent( `${ __dirname }/test.xsl` ) ),
    );

    console.log( html );
})().catch( error => console.error( error ) );


async function getContent( path )
{
    return ( await fs.readFile( path ) ).toString();
}

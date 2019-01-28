.class public Lc8/qXo;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "Parser.java"

# interfaces
.implements Lc8/rXo;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field public static final CDATAElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

.field private static DEFAULT_BOGONS_EMPTY:Z = false

.field private static DEFAULT_CDATA_ELEMENTS:Z = false

.field private static DEFAULT_DEFAULT_ATTRIBUTES:Z = false

.field private static DEFAULT_IGNORABLE_WHITESPACE:Z = false

.field private static DEFAULT_IGNORE_BOGONS:Z = false

.field private static DEFAULT_NAMESPACES:Z = false

.field private static DEFAULT_RESTART_ELEMENTS:Z = false

.field private static DEFAULT_ROOT_BOGONS:Z = false

.field private static DEFAULT_TRANSLATE_COLONS:Z = false

.field public static final XML11Feature:Ljava/lang/String; = "http://xml.org/sax/features/xml-1.1"

.field public static final autoDetectorProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

.field public static final bogonsEmptyFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

.field public static final defaultAttributesFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

.field private static etagchars:[C = null

.field public static final externalGeneralEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field public static final externalParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field public static final ignorableWhitespaceFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

.field public static final ignoreBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

.field public static final isStandaloneFeature:Ljava/lang/String; = "http://xml.org/sax/features/is-standalone"

.field private static legal:Ljava/lang/String; = null

.field public static final lexicalHandlerParameterEntitiesFeature:Ljava/lang/String; = "http://xml.org/sax/features/lexical-handler/parameter-entities"

.field public static final lexicalHandlerProperty:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field public static final namespacePrefixesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field public static final namespacesFeature:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field public static final resolveDTDURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/resolve-dtd-uris"

.field public static final restartElementsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

.field public static final rootBogonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

.field public static final scannerProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

.field public static final schemaProperty:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/properties/schema"

.field public static final stringInterningFeature:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field public static final translateColonsFeature:Ljava/lang/String; = "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

.field public static final unicodeNormalizationCheckingFeature:Ljava/lang/String; = "http://xml.org/sax/features/unicode-normalization-checking"

.field public static final useAttributes2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-attributes2"

.field public static final useEntityResolver2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field public static final useLocator2Feature:Ljava/lang/String; = "http://xml.org/sax/features/use-locator2"

.field public static final validationFeature:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field public static final xmlnsURIsFeature:Ljava/lang/String; = "http://xml.org/sax/features/xmlns-uris"


# instance fields
.field private CDATAElements:Z

.field private bogonsEmpty:Z

.field private defaultAttributes:Z

.field private ignorableWhitespace:Z

.field private ignoreBogons:Z

.field private namespaces:Z

.field private restartElements:Z

.field private rootBogons:Z

.field private theAttributeName:Ljava/lang/String;

.field private theAutoDetector:Lc8/jXo;

.field private theCommentBuffer:[C

.field private theContentHandler:Lorg/xml/sax/ContentHandler;

.field private theDTDHandler:Lorg/xml/sax/DTDHandler;

.field private theDoctypeIsPresent:Z

.field private theDoctypeName:Ljava/lang/String;

.field private theDoctypePublicId:Ljava/lang/String;

.field private theDoctypeSystemId:Ljava/lang/String;

.field private theEntity:I

.field private theEntityResolver:Lorg/xml/sax/EntityResolver;

.field private theErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private theFeatures:Ljava/util/HashMap;

.field private theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private theNewElement:Lc8/kXo;

.field private thePCDATA:Lc8/kXo;

.field private thePITarget:Ljava/lang/String;

.field private theSaved:Lc8/kXo;

.field private theScanner:Lc8/sXo;

.field private theSchema:Lc8/tXo;

.field private theStack:Lc8/kXo;

.field private translateColons:Z

.field private virginStack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lc8/qXo;->DEFAULT_NAMESPACES:Z

    .line 49
    sput-boolean v1, Lc8/qXo;->DEFAULT_IGNORE_BOGONS:Z

    .line 50
    sput-boolean v1, Lc8/qXo;->DEFAULT_BOGONS_EMPTY:Z

    .line 51
    sput-boolean v0, Lc8/qXo;->DEFAULT_ROOT_BOGONS:Z

    .line 52
    sput-boolean v0, Lc8/qXo;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    .line 53
    sput-boolean v1, Lc8/qXo;->DEFAULT_TRANSLATE_COLONS:Z

    .line 54
    sput-boolean v0, Lc8/qXo;->DEFAULT_RESTART_ELEMENTS:Z

    .line 55
    sput-boolean v1, Lc8/qXo;->DEFAULT_IGNORABLE_WHITESPACE:Z

    .line 56
    sput-boolean v0, Lc8/qXo;->DEFAULT_CDATA_ELEMENTS:Z

    .line 632
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/qXo;->etagchars:[C

    .line 909
    const-string/jumbo v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-\'()+,./:=?;!*#@$_%"

    sput-object v0, Lc8/qXo;->legal:Ljava/lang/String;

    return-void

    .line 632
    :array_0
    .array-data 2
        0x3cs
        0x2fs
        0x3es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    iput-object p0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    .line 38
    iput-object p0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 39
    iput-object p0, p0, Lc8/qXo;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 40
    iput-object p0, p0, Lc8/qXo;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 41
    iput-object p0, p0, Lc8/qXo;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 60
    sget-boolean v0, Lc8/qXo;->DEFAULT_NAMESPACES:Z

    iput-boolean v0, p0, Lc8/qXo;->namespaces:Z

    .line 61
    sget-boolean v0, Lc8/qXo;->DEFAULT_IGNORE_BOGONS:Z

    iput-boolean v0, p0, Lc8/qXo;->ignoreBogons:Z

    .line 62
    sget-boolean v0, Lc8/qXo;->DEFAULT_BOGONS_EMPTY:Z

    iput-boolean v0, p0, Lc8/qXo;->bogonsEmpty:Z

    .line 63
    sget-boolean v0, Lc8/qXo;->DEFAULT_ROOT_BOGONS:Z

    iput-boolean v0, p0, Lc8/qXo;->rootBogons:Z

    .line 64
    sget-boolean v0, Lc8/qXo;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    iput-boolean v0, p0, Lc8/qXo;->defaultAttributes:Z

    .line 65
    sget-boolean v0, Lc8/qXo;->DEFAULT_TRANSLATE_COLONS:Z

    iput-boolean v0, p0, Lc8/qXo;->translateColons:Z

    .line 66
    sget-boolean v0, Lc8/qXo;->DEFAULT_RESTART_ELEMENTS:Z

    iput-boolean v0, p0, Lc8/qXo;->restartElements:Z

    .line 67
    sget-boolean v0, Lc8/qXo;->DEFAULT_IGNORABLE_WHITESPACE:Z

    iput-boolean v0, p0, Lc8/qXo;->ignorableWhitespace:Z

    .line 68
    sget-boolean v0, Lc8/qXo;->DEFAULT_CDATA_ELEMENTS:Z

    iput-boolean v0, p0, Lc8/qXo;->CDATAElements:Z

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    .line 286
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    sget-boolean v2, Lc8/qXo;->DEFAULT_NAMESPACES:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/external-general-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/is-standalone"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/lexical-handler/parameter-entities"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/resolve-dtd-uris"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/string-interning"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-attributes2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-locator2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/use-entity-resolver2"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xmlns-uris"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://xml.org/sax/features/xml-1.1"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    sget-boolean v2, Lc8/qXo;->DEFAULT_IGNORE_BOGONS:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    sget-boolean v2, Lc8/qXo;->DEFAULT_BOGONS_EMPTY:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    sget-boolean v2, Lc8/qXo;->DEFAULT_ROOT_BOGONS:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    sget-boolean v2, Lc8/qXo;->DEFAULT_DEFAULT_ATTRIBUTES:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    sget-boolean v2, Lc8/qXo;->DEFAULT_TRANSLATE_COLONS:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    sget-boolean v2, Lc8/qXo;->DEFAULT_RESTART_ELEMENTS:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    sget-boolean v2, Lc8/qXo;->DEFAULT_IGNORABLE_WHITESPACE:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    sget-boolean v2, Lc8/qXo;->DEFAULT_CDATA_ELEMENTS:Z

    invoke-static {v2}, Lc8/qXo;->truthValue(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iput-object v3, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    .line 505
    iput-object v3, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    .line 506
    iput-boolean v4, p0, Lc8/qXo;->theDoctypeIsPresent:Z

    .line 507
    iput-object v3, p0, Lc8/qXo;->theDoctypePublicId:Ljava/lang/String;

    .line 508
    iput-object v3, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;

    .line 509
    iput-object v3, p0, Lc8/qXo;->theDoctypeName:Ljava/lang/String;

    .line 510
    iput-object v3, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    .line 511
    iput-object v3, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .line 512
    iput-object v3, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    .line 513
    iput-object v3, p0, Lc8/qXo;->thePCDATA:Lc8/kXo;

    .line 514
    iput v4, p0, Lc8/qXo;->theEntity:I

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qXo;->virginStack:Z

    .line 1011
    const/16 v0, 0x7d0

    new-array v0, v0, [C

    iput-object v0, p0, Lc8/qXo;->theCommentBuffer:[C

    return-void
.end method

.method private cleanPublicid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 913
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 930
    :goto_0
    return-object v5

    .line 914
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 915
    .local v3, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 916
    .local v1, "dst":Ljava/lang/StringBuffer;
    const/4 v4, 0x1

    .line 917
    .local v4, "suppressSpace":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 918
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 919
    .local v0, "ch":C
    sget-object v5, Lc8/qXo;->legal:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 920
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 921
    const/4 v4, 0x0

    .line 917
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 922
    :cond_2
    if-nez v4, :cond_1

    .line 925
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 926
    const/4 v4, 0x1

    goto :goto_2

    .line 930
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private expandEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    .line 544
    const/4 v7, -0x1

    .line 545
    .local v7, "refStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 546
    .local v6, "len":I
    new-array v1, v6, [C

    .line 547
    .local v1, "dst":[C
    const/4 v2, 0x0

    .line 548
    .local v2, "dstlen":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "dstlen":I
    .local v3, "dstlen":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 549
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 550
    .local v0, "ch":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "dstlen":I
    .restart local v2    # "dstlen":I
    aput-char v0, v1, v3

    .line 552
    const/16 v8, 0x26

    if-ne v0, v8, :cond_1

    if-ne v7, v11, :cond_1

    .line 554
    move v7, v2

    .line 548
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "dstlen":I
    .restart local v3    # "dstlen":I
    goto :goto_0

    .line 556
    .end local v3    # "dstlen":I
    .restart local v2    # "dstlen":I
    :cond_1
    if-eq v7, v11, :cond_0

    .line 559
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 560
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x23

    if-eq v0, v8, :cond_0

    .line 564
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_4

    .line 567
    sub-int v8, v2, v7

    add-int/lit8 v8, v8, -0x1

    invoke-direct {p0, v1, v7, v8}, Lc8/qXo;->lookupEntity([CII)I

    move-result v4

    .line 569
    .local v4, "ent":I
    const v8, 0xffff

    if-le v4, v8, :cond_3

    .line 570
    const/high16 v8, 0x10000

    sub-int/2addr v4, v8

    .line 571
    add-int/lit8 v8, v7, -0x1

    shr-int/lit8 v9, v4, 0xa

    const v10, 0xd800

    add-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v1, v8

    .line 572
    and-int/lit16 v8, v4, 0x3ff

    const v9, 0xdc00

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v1, v7

    .line 573
    add-int/lit8 v2, v7, 0x1

    .line 578
    :cond_2
    :goto_2
    const/4 v7, -0x1

    .line 579
    goto :goto_1

    .line 574
    :cond_3
    if-eqz v4, :cond_2

    .line 575
    add-int/lit8 v8, v7, -0x1

    int-to-char v9, v4

    aput-char v9, v1, v8

    .line 576
    move v2, v7

    goto :goto_2

    .line 582
    .end local v4    # "ent":I
    :cond_4
    const/4 v7, -0x1

    goto :goto_1

    .line 585
    .end local v0    # "ch":C
    .end local v2    # "dstlen":I
    .restart local v3    # "dstlen":I
    :cond_5
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method private foreign(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    .line 801
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    .line 802
    invoke-virtual {v1}, Lc8/tXo;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 804
    .local v0, "foreign":Z
    :goto_0
    return v0

    .line 802
    .end local v0    # "foreign":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Ljava/net/URL;

    const-string/jumbo v3, "file"

    const-string/jumbo v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user.dir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v0, "basis":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 497
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 498
    .local v1, "c":Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method

.method private getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;
    .locals 6
    .param p1, "s"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    .line 472
    .local v3, "r":Ljava/io/Reader;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 473
    .local v1, "i":Ljava/io/InputStream;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, "publicid":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, "systemid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 477
    if-nez v1, :cond_0

    invoke-direct {p0, v2, v4}, Lc8/qXo;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 479
    :cond_0
    if-nez v0, :cond_2

    .line 480
    iget-object v5, p0, Lc8/qXo;->theAutoDetector:Lc8/jXo;

    invoke-interface {v5, v1}, Lc8/jXo;->autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v3

    .line 490
    :cond_1
    :goto_0
    return-object v3

    .line 483
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    .end local v3    # "r":Ljava/io/Reader;
    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "r":Ljava/io/Reader;
    goto :goto_0

    .line 485
    .end local v3    # "r":Ljava/io/Reader;
    :catch_0
    move-exception v5

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .restart local v3    # "r":Ljava/io/Reader;
    goto :goto_0
.end method

.method private lookupEntity([CII)I
    .locals 5
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "result":I
    if-gtz p3, :cond_0

    .line 614
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 599
    .restart local v0    # "result":I
    :cond_0
    aget-char v2, p1, p2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_3

    .line 600
    const/4 v2, 0x1

    if-le p3, v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    aget-char v2, p1, v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-char v2, p1, v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_2

    .line 603
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 605
    :catch_0
    move-exception v2

    move v0, v1

    goto :goto_0

    .line 609
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p3, -0x1

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 611
    :catch_1
    move-exception v2

    move v0, v1

    goto :goto_0

    .line 614
    :cond_3
    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lc8/tXo;->getEntity(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private makeName([CII)Ljava/lang/String;
    .locals 9
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v8, 0x3a

    const/16 v6, 0x5f

    .line 1056
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v7, p3, 0x2

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1057
    .local v1, "dst":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 1058
    .local v4, "seenColon":Z
    const/4 v5, 0x1

    .local v5, "start":Z
    move v3, p3

    .line 1060
    .end local p3    # "length":I
    .local v3, "length":I
    :goto_0
    add-int/lit8 p3, v3, -0x1

    .end local v3    # "length":I
    .restart local p3    # "length":I
    if-lez v3, :cond_8

    .line 1061
    aget-char v0, p1, p2

    .line 1062
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_0

    if-ne v0, v6, :cond_2

    .line 1063
    :cond_0
    const/4 v5, 0x0

    .line 1064
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1060
    .end local v0    # "ch":C
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    move v3, p3

    .end local p3    # "length":I
    .restart local v3    # "length":I
    goto :goto_0

    .line 1065
    .end local v3    # "length":I
    .restart local v0    # "ch":C
    .restart local p3    # "length":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_3

    const/16 v7, 0x2e

    if-ne v0, v7, :cond_5

    .line 1066
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1067
    :cond_4
    const/4 v5, 0x0

    .line 1068
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1069
    :cond_5
    if-ne v0, v8, :cond_1

    if-nez v4, :cond_1

    .line 1070
    const/4 v4, 0x1

    .line 1071
    if-eqz v5, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1072
    :cond_6
    const/4 v5, 0x1

    .line 1073
    iget-boolean v7, p0, Lc8/qXo;->translateColons:Z

    if-eqz v7, :cond_7

    move v0, v6

    .end local v0    # "ch":C
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1076
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 1077
    .local v2, "dstLength":I
    if-eqz v2, :cond_9

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_a

    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1079
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private pop()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 712
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    if-nez v8, :cond_0

    .line 735
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v8}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v8}, Lc8/kXo;->localName()Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, "localName":Ljava/lang/String;
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v8}, Lc8/kXo;->namespace()Ljava/lang/String;

    move-result-object v6

    .line 716
    .local v6, "namespace":Ljava/lang/String;
    invoke-direct {p0, v5}, Lc8/qXo;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, "prefix":Ljava/lang/String;
    iget-boolean v8, p0, Lc8/qXo;->namespaces:Z

    if-nez v8, :cond_1

    const-string/jumbo v4, ""

    move-object v6, v4

    .line 720
    :cond_1
    iget-object v8, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v6, v4, v5}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0, v7, v6}, Lc8/qXo;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 722
    iget-object v8, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v7}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 725
    :cond_2
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v8}, Lc8/kXo;->atts()Lc8/iXo;

    move-result-object v2

    .line 726
    .local v2, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 727
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "attNamespace":Ljava/lang/String;
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lc8/qXo;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lc8/qXo;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 730
    iget-object v8, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v8, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 726
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 734
    .end local v0    # "attNamespace":Ljava/lang/String;
    .end local v1    # "attPrefix":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v8}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v8

    iput-object v8, p0, Lc8/qXo;->theStack:Lc8/kXo;

    goto :goto_0
.end method

.method private prefixOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 791
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 792
    .local v0, "i":I
    const-string/jumbo v1, ""

    .line 793
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 795
    :cond_0
    return-object v1
.end method

.method private push(Lc8/kXo;)V
    .locals 12
    .param p1, "e"    # Lc8/kXo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p1}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/kXo;->localName()Ljava/lang/String;

    move-result-object v5

    .line 754
    .local v5, "localName":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/kXo;->namespace()Ljava/lang/String;

    move-result-object v7

    .line 755
    .local v7, "namespace":Ljava/lang/String;
    invoke-direct {p0, v6}, Lc8/qXo;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 758
    .local v8, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/kXo;->clean()V

    .line 759
    iget-boolean v9, p0, Lc8/qXo;->namespaces:Z

    if-nez v9, :cond_0

    const-string/jumbo v5, ""

    move-object v7, v5

    .line 760
    :cond_0
    iget-boolean v9, p0, Lc8/qXo;->virginStack:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lc8/qXo;->theDoctypeName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 762
    :try_start_0
    iget-object v9, p0, Lc8/qXo;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    iget-object v10, p0, Lc8/qXo;->theDoctypePublicId:Ljava/lang/String;

    iget-object v11, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_1
    :goto_0
    invoke-direct {p0, v8, v7}, Lc8/qXo;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 767
    iget-object v9, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v8, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_2
    invoke-virtual {p1}, Lc8/kXo;->atts()Lc8/iXo;

    move-result-object v2

    .line 771
    .local v2, "atts":Lorg/xml/sax/Attributes;
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    .line 772
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 773
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "attNamespace":Ljava/lang/String;
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lc8/qXo;->prefixOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "attPrefix":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lc8/qXo;->foreign(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 776
    iget-object v9, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v9, v1, v0}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 780
    .end local v0    # "attNamespace":Ljava/lang/String;
    .end local v1    # "attPrefix":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Lc8/kXo;->atts()Lc8/iXo;

    move-result-object v10

    invoke-interface {v9, v7, v5, v6, v10}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 781
    iget-object v9, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {p1, v9}, Lc8/kXo;->setNext(Lc8/kXo;)V

    .line 782
    iput-object p1, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .line 783
    const/4 v9, 0x0

    iput-boolean v9, p0, Lc8/qXo;->virginStack:Z

    .line 784
    iget-boolean v9, p0, Lc8/qXo;->CDATAElements:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v9}, Lc8/kXo;->flags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_5

    .line 785
    iget-object v9, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    invoke-interface {v9}, Lc8/sXo;->startCDATA()V

    .line 787
    :cond_5
    return-void

    .end local v2    # "atts":Lorg/xml/sax/Attributes;
    .end local v3    # "i":I
    .end local v4    # "len":I
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method private rectify(Lc8/kXo;)V
    .locals 6
    .param p1, "e"    # Lc8/kXo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1022
    :goto_0
    iget-object v3, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .local v3, "sp":Lc8/kXo;
    :goto_1
    if-eqz v3, :cond_0

    .line 1023
    invoke-virtual {v3, p1}, Lc8/kXo;->canContain(Lc8/kXo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1022
    invoke-virtual {v3}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v3

    goto :goto_1

    .line 1025
    :cond_0
    if-nez v3, :cond_1

    .line 1026
    invoke-virtual {p1}, Lc8/kXo;->parent()Lc8/lXo;

    move-result-object v2

    .line 1027
    .local v2, "parentType":Lc8/lXo;
    if-eqz v2, :cond_1

    .line 1028
    new-instance v1, Lc8/kXo;

    iget-boolean v4, p0, Lc8/qXo;->defaultAttributes:Z

    invoke-direct {v1, v2, v4}, Lc8/kXo;-><init>(Lc8/lXo;Z)V

    .line 1030
    .local v1, "parent":Lc8/kXo;
    invoke-virtual {v1, p1}, Lc8/kXo;->setNext(Lc8/kXo;)V

    .line 1031
    move-object p1, v1

    .line 1032
    goto :goto_0

    .line 1033
    .end local v1    # "parent":Lc8/kXo;
    .end local v2    # "parentType":Lc8/lXo;
    :cond_1
    if-nez v3, :cond_2

    .line 1046
    :goto_2
    return-void

    .line 1034
    :cond_2
    :goto_3
    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    if-eq v4, v3, :cond_3

    .line 1035
    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v4}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .line 1036
    invoke-virtual {v4}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    invoke-virtual {v4}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1037
    invoke-direct {p0}, Lc8/qXo;->restartablyPop()V

    goto :goto_3

    .line 1039
    :cond_3
    :goto_4
    if-eqz p1, :cond_5

    .line 1040
    invoke-virtual {p1}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v0

    .line 1041
    .local v0, "nexte":Lc8/kXo;
    invoke-virtual {p1}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "<pcdata>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, p1}, Lc8/qXo;->push(Lc8/kXo;)V

    .line 1042
    :cond_4
    move-object p1, v0

    .line 1043
    invoke-direct {p0, p1}, Lc8/qXo;->restart(Lc8/kXo;)V

    goto :goto_4

    .line 1045
    .end local v0    # "nexte":Lc8/kXo;
    :cond_5
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    goto :goto_2
.end method

.method private restart(Lc8/kXo;)V
    .locals 3
    .param p1, "e"    # Lc8/kXo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 702
    :goto_0
    iget-object v1, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/qXo;->theStack:Lc8/kXo;

    iget-object v2, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    invoke-virtual {v1, v2}, Lc8/kXo;->canContain(Lc8/kXo;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    .line 703
    invoke-virtual {v1, p1}, Lc8/kXo;->canContain(Lc8/kXo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    :cond_0
    iget-object v1, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    invoke-virtual {v1}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v0

    .line 705
    .local v0, "next":Lc8/kXo;
    iget-object v1, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    invoke-direct {p0, v1}, Lc8/qXo;->push(Lc8/kXo;)V

    .line 706
    iput-object v0, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    goto :goto_0

    .line 708
    .end local v0    # "next":Lc8/kXo;
    :cond_1
    return-void
.end method

.method private restartablyPop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 739
    iget-object v0, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .line 740
    .local v0, "popped":Lc8/kXo;
    invoke-direct {p0}, Lc8/qXo;->pop()V

    .line 741
    iget-boolean v1, p0, Lc8/qXo;->restartElements:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc8/kXo;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {v0}, Lc8/kXo;->anonymize()V

    .line 743
    iget-object v1, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    invoke-virtual {v0, v1}, Lc8/kXo;->setNext(Lc8/kXo;)V

    .line 744
    iput-object v0, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    .line 746
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-object v0, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    if-nez v0, :cond_0

    new-instance v0, Lc8/oXo;

    invoke-direct {v0}, Lc8/oXo;-><init>()V

    iput-object v0, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    .line 449
    :cond_0
    iget-object v0, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    if-nez v0, :cond_1

    new-instance v0, Lc8/nXo;

    invoke-direct {v0}, Lc8/nXo;-><init>()V

    iput-object v0, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    .line 450
    :cond_1
    iget-object v0, p0, Lc8/qXo;->theAutoDetector:Lc8/jXo;

    if-nez v0, :cond_2

    .line 451
    new-instance v0, Lc8/pXo;

    invoke-direct {v0, p0}, Lc8/pXo;-><init>(Lc8/qXo;)V

    iput-object v0, p0, Lc8/qXo;->theAutoDetector:Lc8/jXo;

    .line 457
    :cond_2
    new-instance v0, Lc8/kXo;

    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    const-string/jumbo v2, "<root>"

    invoke-virtual {v1, v2}, Lc8/tXo;->getElementType(Ljava/lang/String;)Lc8/lXo;

    move-result-object v1

    iget-boolean v2, p0, Lc8/qXo;->defaultAttributes:Z

    invoke-direct {v0, v1, v2}, Lc8/kXo;-><init>(Lc8/lXo;Z)V

    iput-object v0, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .line 458
    new-instance v0, Lc8/kXo;

    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    const-string/jumbo v2, "<pcdata>"

    invoke-virtual {v1, v2}, Lc8/tXo;->getElementType(Ljava/lang/String;)Lc8/lXo;

    move-result-object v1

    iget-boolean v2, p0, Lc8/qXo;->defaultAttributes:Z

    invoke-direct {v0, v1, v2}, Lc8/kXo;-><init>(Lc8/lXo;Z)V

    iput-object v0, p0, Lc8/qXo;->thePCDATA:Lc8/kXo;

    .line 459
    iput-object v3, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    .line 460
    iput-object v3, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    .line 461
    iput-object v3, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    .line 462
    iput-object v3, p0, Lc8/qXo;->theSaved:Lc8/kXo;

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lc8/qXo;->theEntity:I

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qXo;->virginStack:Z

    .line 465
    iput-object v3, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;

    iput-object v3, p0, Lc8/qXo;->theDoctypePublicId:Ljava/lang/String;

    iput-object v3, p0, Lc8/qXo;->theDoctypeName:Ljava/lang/String;

    .line 466
    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x5c

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 874
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 875
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 876
    new-array v8, v9, [Ljava/lang/String;

    .line 904
    :goto_0
    return-object v8

    .line 878
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v3, "l":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 881
    .local v6, "s":I
    const/4 v7, 0x0

    .line 882
    .local v7, "sq":Z
    const/4 v1, 0x0

    .line 883
    .local v1, "dq":Z
    const/4 v4, 0x0

    .line 884
    .local v4, "lastc":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 885
    .local v5, "len":I
    const/4 v2, 0x0

    .local v2, "e":I
    :goto_1
    if-ge v2, v5, :cond_8

    .line 886
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 887
    .local v0, "c":C
    if-nez v1, :cond_3

    const/16 v10, 0x27

    if-ne v0, v10, :cond_3

    if-eq v4, v11, :cond_3

    .line 888
    if-nez v7, :cond_2

    move v7, v8

    .line 889
    :goto_2
    if-gez v6, :cond_1

    move v6, v2

    .line 901
    :cond_1
    :goto_3
    move v4, v0

    .line 885
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v7, v9

    .line 888
    goto :goto_2

    .line 890
    :cond_3
    if-nez v7, :cond_5

    const/16 v10, 0x22

    if-ne v0, v10, :cond_5

    if-eq v4, v11, :cond_5

    .line 891
    if-nez v1, :cond_4

    move v1, v8

    .line 892
    :goto_4
    if-gez v6, :cond_1

    move v6, v2

    goto :goto_3

    :cond_4
    move v1, v9

    .line 891
    goto :goto_4

    .line 893
    :cond_5
    if-nez v7, :cond_1

    if-nez v1, :cond_1

    .line 894
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 895
    if-ltz v6, :cond_6

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    :cond_6
    const/4 v6, -0x1

    goto :goto_3

    .line 897
    :cond_7
    if-gez v6, :cond_1

    const/16 v10, 0x20

    if-eq v0, v10, :cond_1

    .line 898
    move v6, v2

    goto :goto_3

    .line 903
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    new-array v8, v9, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static trimquotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p0, :cond_1

    .line 868
    :cond_0
    :goto_0
    return-object p0

    .line 861
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 862
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 863
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 864
    .local v2, "s":C
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 865
    .local v0, "e":C
    if-ne v2, v0, :cond_0

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    .line 866
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static truthValue(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 315
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public adup([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 517
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    iget-object v1, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    iget-object v2, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lc8/kXo;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iput-object v3, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public aname([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-nez v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc8/qXo;->makeName([CII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public aval([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v1, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 534
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/qXo;->expandEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    iget-object v2, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lc8/kXo;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iput-object v3, p0, Lc8/qXo;->theAttributeName:Ljava/lang/String;

    goto :goto_0
.end method

.method public cdsect([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 955
    invoke-virtual {p0, p1, p2, p3}, Lc8/qXo;->pcdata([CII)V

    .line 956
    iget-object v0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 957
    return-void
.end method

.method public cmnt([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 1015
    return-void
.end method

.method public comment([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1085
    return-void
.end method

.method public decl([CII)V
    .locals 11
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x3

    .line 818
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 819
    .local v2, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 820
    .local v0, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 821
    .local v3, "systemid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 822
    .local v1, "publicid":Ljava/lang/String;
    invoke-static {v2}, Lc8/qXo;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 823
    .local v4, "v":[Ljava/lang/String;
    array-length v5, v4

    if-lez v5, :cond_2

    const-string/jumbo v5, "DOCTYPE"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 824
    iget-boolean v5, p0, Lc8/qXo;->theDoctypeIsPresent:Z

    if-eqz v5, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iput-boolean v8, p0, Lc8/qXo;->theDoctypeIsPresent:Z

    .line 826
    array-length v5, v4

    if-le v5, v8, :cond_2

    .line 827
    aget-object v0, v4, v8

    .line 828
    array-length v5, v4

    if-le v5, v7, :cond_3

    const-string/jumbo v5, "SYSTEM"

    aget-object v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 829
    aget-object v3, v4, v7

    .line 840
    :cond_2
    :goto_1
    invoke-static {v1}, Lc8/qXo;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-static {v3}, Lc8/qXo;->trimquotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    if-eqz v0, :cond_0

    .line 843
    invoke-direct {p0, v1}, Lc8/qXo;->cleanPublicid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    iget-object v5, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v5, v0, v1, v3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v5, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v5}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 846
    iput-object v0, p0, Lc8/qXo;->theDoctypeName:Ljava/lang/String;

    .line 847
    iput-object v1, p0, Lc8/qXo;->theDoctypePublicId:Ljava/lang/String;

    .line 848
    iget-object v5, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    instance-of v5, v5, Lorg/xml/sax/Locator;

    if-eqz v5, :cond_0

    .line 849
    iget-object v5, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    check-cast v5, Lorg/xml/sax/Locator;

    invoke-interface {v5}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;

    .line 851
    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/qXo;->theDoctypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    .line 830
    :cond_3
    array-length v5, v4

    if-le v5, v7, :cond_2

    const-string/jumbo v5, "PUBLIC"

    aget-object v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 831
    aget-object v1, v4, v7

    .line 832
    array-length v5, v4

    if-le v5, v10, :cond_4

    .line 833
    aget-object v3, v4, v10

    goto :goto_1

    .line 835
    :cond_4
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1088
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1091
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1094
    return-void
.end method

.method public entity([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0, p1, p2, p3}, Lc8/qXo;->lookupEntity([CII)I

    move-result v0

    iput v0, p0, Lc8/qXo;->theEntity:I

    .line 590
    return-void
.end method

.method public eof([CII)V
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 618
    iget-boolean v0, p0, Lc8/qXo;->virginStack:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qXo;->thePCDATA:Lc8/kXo;

    invoke-direct {p0, v0}, Lc8/qXo;->rectify(Lc8/kXo;)V

    .line 619
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v0}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 620
    invoke-direct {p0}, Lc8/qXo;->pop()V

    goto :goto_0

    .line 622
    :cond_1
    iget-object v0, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v0}, Lc8/tXo;->getURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget-object v0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v1}, Lc8/tXo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 624
    :cond_2
    iget-object v0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 625
    return-void
.end method

.method public etag([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0, p1, p2, p3}, Lc8/qXo;->etag_cdata([CII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/qXo;->etag_basic([CII)V

    goto :goto_0
.end method

.method public etag_basic([CII)V
    .locals 6
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 661
    iput-object v5, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    .line 663
    if-eqz p3, :cond_3

    .line 665
    invoke-direct {p0, p1, p2, p3}, Lc8/qXo;->makeName([CII)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v4, v1}, Lc8/tXo;->getElementType(Ljava/lang/String;)Lc8/lXo;

    move-result-object v3

    .line 668
    .local v3, "type":Lc8/lXo;
    if-nez v3, :cond_1

    .line 697
    .end local v3    # "type":Lc8/lXo;
    :cond_0
    :goto_0
    return-void

    .line 669
    .restart local v3    # "type":Lc8/lXo;
    :cond_1
    invoke-virtual {v3}, Lc8/lXo;->name()Ljava/lang/String;

    move-result-object v1

    .line 676
    .end local v3    # "type":Lc8/lXo;
    :goto_1
    const/4 v0, 0x0

    .line 677
    .local v0, "inNoforce":Z
    iget-object v2, p0, Lc8/qXo;->theStack:Lc8/kXo;

    .local v2, "sp":Lc8/kXo;
    :goto_2
    if-eqz v2, :cond_4

    .line 678
    invoke-virtual {v2}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 679
    invoke-virtual {v2}, Lc8/kXo;->flags()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 677
    :cond_2
    invoke-virtual {v2}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v2

    goto :goto_2

    .line 671
    .end local v0    # "inNoforce":Z
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "sp":Lc8/kXo;
    :cond_3
    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v4}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_1

    .line 682
    .restart local v0    # "inNoforce":Z
    .restart local v2    # "sp":Lc8/kXo;
    :cond_4
    if-eqz v2, :cond_0

    .line 683
    invoke-virtual {v2}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    invoke-virtual {v4}, Lc8/kXo;->next()Lc8/kXo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 684
    if-eqz v0, :cond_5

    .line 685
    invoke-virtual {v2}, Lc8/kXo;->preclose()V

    .line 693
    :goto_3
    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v4}, Lc8/kXo;->isPreclosed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 694
    invoke-direct {p0}, Lc8/qXo;->pop()V

    goto :goto_3

    .line 687
    :cond_5
    :goto_4
    iget-object v4, p0, Lc8/qXo;->theStack:Lc8/kXo;

    if-eq v4, v2, :cond_6

    .line 688
    invoke-direct {p0}, Lc8/qXo;->restartablyPop()V

    goto :goto_4

    .line 690
    :cond_6
    invoke-direct {p0}, Lc8/qXo;->pop()V

    goto :goto_3

    .line 696
    :cond_7
    invoke-direct {p0, v5}, Lc8/qXo;->restart(Lc8/kXo;)V

    goto :goto_0
.end method

.method public etag_cdata([CII)Z
    .locals 8
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 635
    iget-object v5, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v5}, Lc8/kXo;->name()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "currentName":Ljava/lang/String;
    iget-boolean v5, p0, Lc8/qXo;->CDATAElements:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v5}, Lc8/kXo;->flags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 640
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p3, v5, :cond_1

    move v2, v3

    .line 641
    .local v2, "realTag":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 642
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_0

    .line 643
    add-int v5, p2, v1

    aget-char v5, p1, v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    if-eq v5, v6, :cond_2

    .line 644
    const/4 v2, 0x0

    .line 649
    .end local v1    # "i":I
    :cond_0
    if-nez v2, :cond_3

    .line 650
    iget-object v5, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    sget-object v6, Lc8/qXo;->etagchars:[C

    invoke-interface {v5, v6, v4, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 651
    iget-object v4, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v4, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 652
    iget-object v4, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    sget-object v5, Lc8/qXo;->etagchars:[C

    invoke-interface {v4, v5, v7, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 653
    iget-object v4, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    invoke-interface {v4}, Lc8/sXo;->startCDATA()V

    .line 657
    .end local v2    # "realTag":Z
    :goto_2
    return v3

    :cond_1
    move v2, v4

    .line 640
    goto :goto_0

    .line 642
    .restart local v1    # "i":I
    .restart local v2    # "realTag":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "realTag":Z
    :cond_3
    move v3, v4

    .line 657
    goto :goto_2
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    goto :goto_0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lc8/qXo;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/qXo;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    goto :goto_0
.end method

.method public getEntity()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Lc8/qXo;->theEntity:I

    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lc8/qXo;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/qXo;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lc8/qXo;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/qXo;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v1, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 322
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 323
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 350
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 351
    :cond_0
    iget-object v0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    .line 352
    :cond_1
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    goto :goto_0

    .line 354
    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    goto :goto_0

    .line 356
    :cond_3
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    iget-object v0, p0, Lc8/qXo;->theAutoDetector:Lc8/jXo;

    goto :goto_0

    .line 359
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public gi([CII)V
    .locals 7
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 935
    iget-object v6, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-eqz v6, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lc8/qXo;->makeName([CII)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 938
    iget-object v6, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v6, v2}, Lc8/tXo;->getElementType(Ljava/lang/String;)Lc8/lXo;

    move-result-object v3

    .line 939
    .local v3, "type":Lc8/lXo;
    if-nez v3, :cond_3

    .line 941
    iget-boolean v6, p0, Lc8/qXo;->ignoreBogons:Z

    if-nez v6, :cond_0

    .line 942
    iget-boolean v6, p0, Lc8/qXo;->bogonsEmpty:Z

    if-eqz v6, :cond_4

    move v1, v4

    .line 943
    .local v1, "bogonModel":I
    :goto_1
    iget-boolean v6, p0, Lc8/qXo;->rootBogons:Z

    if-eqz v6, :cond_5

    move v0, v5

    .line 944
    .local v0, "bogonMemberOf":I
    :goto_2
    iget-object v5, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v5, v2, v1, v0, v4}, Lc8/tXo;->elementType(Ljava/lang/String;III)V

    .line 945
    iget-boolean v4, p0, Lc8/qXo;->rootBogons:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    iget-object v5, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v5}, Lc8/tXo;->rootElementType()Lc8/lXo;

    move-result-object v5

    invoke-virtual {v5}, Lc8/lXo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lc8/tXo;->parent(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_2
    iget-object v4, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v4, v2}, Lc8/tXo;->getElementType(Ljava/lang/String;)Lc8/lXo;

    move-result-object v3

    .line 949
    .end local v0    # "bogonMemberOf":I
    .end local v1    # "bogonModel":I
    :cond_3
    new-instance v4, Lc8/kXo;

    iget-boolean v5, p0, Lc8/qXo;->defaultAttributes:Z

    invoke-direct {v4, v3, v5}, Lc8/kXo;-><init>(Lc8/lXo;Z)V

    iput-object v4, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    goto :goto_0

    :cond_4
    move v1, v5

    .line 942
    goto :goto_1

    .line 943
    .restart local v1    # "bogonModel":I
    :cond_5
    const v0, 0x7fffffff

    goto :goto_2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc8/qXo;->parse(Lorg/xml/sax/InputSource;)V

    .line 444
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Lc8/qXo;->setup()V

    .line 430
    invoke-direct {p0, p1}, Lc8/qXo;->getReader(Lorg/xml/sax/InputSource;)Ljava/io/Reader;

    move-result-object v0

    .line 431
    .local v0, "r":Ljava/io/Reader;
    iget-object v1, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 432
    iget-object v1, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc8/sXo;->resetDocumentLocator(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    instance-of v1, v1, Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    .line 434
    iget-object v2, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    check-cast v1, Lorg/xml/sax/Locator;

    invoke-interface {v2, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 436
    :cond_0
    iget-object v1, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v1}, Lc8/tXo;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    iget-object v1, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    invoke-virtual {v2}, Lc8/tXo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    .line 438
    invoke-virtual {v3}, Lc8/tXo;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-interface {v1, v2, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-object v1, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    invoke-interface {v1, v0, p0}, Lc8/sXo;->scan(Ljava/io/Reader;Lc8/rXo;)V

    .line 440
    return-void
.end method

.method public pcdata([CII)V
    .locals 4
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 960
    if-nez p3, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const/4 v0, 0x1

    .line 962
    .local v0, "allWhite":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 963
    add-int v2, p2, v1

    aget-char v2, p1, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 964
    const/4 v0, 0x0

    .line 962
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 967
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lc8/qXo;->theStack:Lc8/kXo;

    iget-object v3, p0, Lc8/qXo;->thePCDATA:Lc8/kXo;

    invoke-virtual {v2, v3}, Lc8/kXo;->canContain(Lc8/kXo;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 968
    iget-boolean v2, p0, Lc8/qXo;->ignorableWhitespace:Z

    if-eqz v2, :cond_0

    .line 969
    iget-object v2, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    goto :goto_0

    .line 972
    :cond_4
    iget-object v2, p0, Lc8/qXo;->thePCDATA:Lc8/kXo;

    invoke-direct {p0, v2}, Lc8/qXo;->rectify(Lc8/kXo;)V

    .line 973
    iget-object v2, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0
.end method

.method public pi([CII)V
    .locals 3
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    const-string/jumbo v0, "xml"

    iget-object v1, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    aget-char v0, p1, v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 987
    :cond_2
    iget-object v0, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    goto :goto_0
.end method

.method public pitarget([CII)V
    .locals 3
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 978
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-eqz v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc8/qXo;->makeName([CII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/qXo;->thePITarget:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 413
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "handler":Lorg/xml/sax/ContentHandler;
    :cond_0
    iput-object p1, p0, Lc8/qXo;->theContentHandler:Lorg/xml/sax/ContentHandler;

    .line 414
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 405
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "handler":Lorg/xml/sax/DTDHandler;
    :cond_0
    iput-object p1, p0, Lc8/qXo;->theDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 406
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 397
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "resolver":Lorg/xml/sax/EntityResolver;
    :cond_0
    iput-object p1, p0, Lc8/qXo;->theEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 398
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 421
    if-nez p1, :cond_0

    move-object p1, p0

    .end local p1    # "handler":Lorg/xml/sax/ErrorHandler;
    :cond_0
    iput-object p1, p0, Lc8/qXo;->theErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 422
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v1, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 331
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 332
    new-instance v1, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean p2, p0, Lc8/qXo;->namespaces:Z

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 335
    :cond_2
    iget-object v1, p0, Lc8/qXo;->theFeatures:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_3
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignore-bogons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean p2, p0, Lc8/qXo;->ignoreBogons:Z

    goto :goto_1

    .line 339
    :cond_4
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/bogons-empty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean p2, p0, Lc8/qXo;->bogonsEmpty:Z

    goto :goto_1

    .line 340
    :cond_5
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/root-bogons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean p2, p0, Lc8/qXo;->rootBogons:Z

    goto :goto_1

    .line 341
    :cond_6
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/default-attributes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean p2, p0, Lc8/qXo;->defaultAttributes:Z

    goto :goto_1

    .line 342
    :cond_7
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/translate-colons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean p2, p0, Lc8/qXo;->translateColons:Z

    goto :goto_1

    .line 343
    :cond_8
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/restart-elements"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-boolean p2, p0, Lc8/qXo;->restartElements:Z

    goto :goto_1

    .line 344
    :cond_9
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/ignorable-whitespace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean p2, p0, Lc8/qXo;->ignorableWhitespace:Z

    goto :goto_1

    .line 345
    :cond_a
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/features/cdata-elements"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p2, p0, Lc8/qXo;->CDATAElements:Z

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 365
    const-string/jumbo v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    if-nez p2, :cond_0

    .line 367
    iput-object p0, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 387
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 368
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_1

    .line 369
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lc8/qXo;->theLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto :goto_0

    .line 371
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your lexical handler is not a LexicalHandler"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_2
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/scanner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    instance-of v0, p2, Lc8/sXo;

    if-eqz v0, :cond_3

    .line 375
    check-cast p2, Lc8/sXo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lc8/qXo;->theScanner:Lc8/sXo;

    goto :goto_0

    .line 377
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your scanner is not a Scanner"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_4
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    instance-of v0, p2, Lc8/tXo;

    if-eqz v0, :cond_5

    .line 381
    check-cast p2, Lc8/tXo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lc8/qXo;->theSchema:Lc8/tXo;

    goto :goto_0

    .line 383
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your schema is not a Schema"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_6
    const-string/jumbo v0, "http://www.ccil.org/~cowan/tagsoup/properties/auto-detector"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 386
    instance-of v0, p2, Lc8/jXo;

    if-eqz v0, :cond_7

    .line 387
    check-cast p2, Lc8/jXo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lc8/qXo;->theAutoDetector:Lc8/jXo;

    goto :goto_0

    .line 389
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string/jumbo v1, "Your auto-detector is not an AutoDetector"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_8
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stagc([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 994
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    invoke-direct {p0, v0}, Lc8/qXo;->rectify(Lc8/kXo;)V

    .line 996
    iget-object v0, p0, Lc8/qXo;->theStack:Lc8/kXo;

    invoke-virtual {v0}, Lc8/kXo;->model()I

    move-result v0

    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0, p1, p2, p3}, Lc8/qXo;->etag_basic([CII)V

    goto :goto_0
.end method

.method public stage([CII)V
    .locals 1
    .param p1, "buff"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    if-nez v0, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lc8/qXo;->theNewElement:Lc8/kXo;

    invoke-direct {p0, v0}, Lc8/qXo;->rectify(Lc8/kXo;)V

    .line 1007
    invoke-virtual {p0, p1, p2, p3}, Lc8/qXo;->etag_basic([CII)V

    goto :goto_0
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1097
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicid"    # Ljava/lang/String;
    .param p3, "systemid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1100
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1103
    return-void
.end method

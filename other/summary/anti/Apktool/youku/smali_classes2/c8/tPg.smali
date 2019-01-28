.class public Lc8/tPg;
.super Ljava/lang/Object;
.source "FontConstants.java"


# static fields
.field public static CONTENT_JSON:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "{\n  \"font-family\" : [\n    {\n      \"name\" : \"source-han\",\n      \"description\" : \"xxx\",\n      \"priority\" : 0,\n      \"typeface\" : [\n        {\n          \"name\" : \"source-han-extralight\",\n          \"font-weight\" : 200,\n          \"font-style\" : \"normal\",\n          \"download-url\" : \"http://cn-vmc-images.alicdn.com/font/SourceHanSansCN-ExtraLight.otf\"\n        },\n        {\n          \"name\" : \"source-han-heavy\",\n          \"font-weight\" : 800,\n          \"font-style\" : \"normal\",\n          \"download-url\" : \"http://cn-vmc-images.alicdn.com/font/SourceHanSansCN-Heavy.otf\"\n        }\n      ]\n    }\n  ]\n}"

    sput-object v0, Lc8/tPg;->CONTENT_JSON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final enum Lcom/taobao/weex/common/WXErrorCode;
.super Ljava/lang/Enum;
.source "WXErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/common/WXErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERROR_DOM_CREATEFINISH:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERROR_DOM_REFRESHFINISH:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_BAD_SO:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_COPY_FROM_APK:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_ADDELEMENT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_ADDEVENT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_MOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_REMOVEEVENT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_SCROLLTO:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSBUNDLE_EMPTY:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSDOWNLOAD_END:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSDOWNLOAD_START:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSFUNC_PARAM:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JSON_OBJECT:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_JS_REINIT_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_LOAD_JSLIB:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_LOAD_SO:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

.field public static final enum WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;


# instance fields
.field private appendMsg:Ljava/lang/String;

.field private args:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_LOAD_SO"

    const-string/jumbo v2, "-2001"

    const-string/jumbo v3, "load so error"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    .line 33
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_LOAD_JSLIB"

    const-string/jumbo v2, "-2002"

    const-string/jumbo v3, "unzip JSLib error!"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_JSLIB:Lcom/taobao/weex/common/WXErrorCode;

    .line 38
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_BAD_SO"

    const-string/jumbo v2, "-2003"

    const-string/jumbo v3, "so size error, to reload apk so"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_BAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    .line 43
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_COPY_FROM_APK"

    const-string/jumbo v2, "-2007"

    const-string/jumbo v3, "system load so error\uff0ccopy from APK also error!"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_COPY_FROM_APK:Lcom/taobao/weex/common/WXErrorCode;

    .line 51
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSFUNC_PARAM"

    const-string/jumbo v2, "-2009"

    const-string/jumbo v3, "JS params error!"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSFUNC_PARAM:Lcom/taobao/weex/common/WXErrorCode;

    .line 56
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSON_OBJECT"

    const/4 v2, 0x5

    const-string/jumbo v3, "-2008"

    const-string/jumbo v4, "transform JSON->OBJ  error!"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSON_OBJECT:Lcom/taobao/weex/common/WXErrorCode;

    .line 61
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_INVOKE_NATIVE"

    const/4 v2, 0x6

    const-string/jumbo v3, "-2012"

    const-string/jumbo v4, "Native-> Call ->JS  error!"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    .line 66
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JS_EXECUTE"

    const/4 v2, 0x7

    const-string/jumbo v3, "-2013"

    const-string/jumbo v4, "JavaScript execute error!"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    .line 71
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_SUCCESS"

    const/16 v2, 0x8

    const-string/jumbo v3, "0"

    const-string/jumbo v4, "successful"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    .line 75
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_CREATEBODY"

    const/16 v2, 0x9

    const-string/jumbo v3, "-2100"

    const-string/jumbo v4, "createBody error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

    .line 79
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_UPDATEATTRS"

    const/16 v2, 0xa

    const-string/jumbo v3, "-2101"

    const-string/jumbo v4, "updateAttrs error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

    .line 83
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_UPDATESTYLE"

    const/16 v2, 0xb

    const-string/jumbo v3, "-2102"

    const-string/jumbo v4, "updateStyle error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

    .line 87
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_ADDELEMENT"

    const/16 v2, 0xc

    const-string/jumbo v3, "-2103"

    const-string/jumbo v4, "addElement error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    .line 91
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_REMOVEELEMENT"

    const/16 v2, 0xd

    const-string/jumbo v3, "-2104"

    const-string/jumbo v4, "removeElement error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    .line 95
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_MOVEELEMENT"

    const/16 v2, 0xe

    const-string/jumbo v3, "-2105"

    const-string/jumbo v4, "moveElement error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_MOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    .line 99
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_ADDEVENT"

    const/16 v2, 0xf

    const-string/jumbo v3, "-2106"

    const-string/jumbo v4, "addEvent error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDEVENT:Lcom/taobao/weex/common/WXErrorCode;

    .line 103
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_REMOVEEVENT"

    const/16 v2, 0x10

    const-string/jumbo v3, "-2107"

    const-string/jumbo v4, "removeEvent error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEEVENT:Lcom/taobao/weex/common/WXErrorCode;

    .line 107
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERROR_DOM_CREATEFINISH"

    const/16 v2, 0x11

    const-string/jumbo v3, "-2108"

    const-string/jumbo v4, "createFinish error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_CREATEFINISH:Lcom/taobao/weex/common/WXErrorCode;

    .line 111
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERROR_DOM_REFRESHFINISH"

    const/16 v2, 0x12

    const-string/jumbo v3, "-2109"

    const-string/jumbo v4, "refreshFinish error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_REFRESHFINISH:Lcom/taobao/weex/common/WXErrorCode;

    .line 115
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_DOM_SCROLLTO"

    const/16 v2, 0x13

    const-string/jumbo v3, "-2110"

    const-string/jumbo v4, "scrollToElement"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_SCROLLTO:Lcom/taobao/weex/common/WXErrorCode;

    .line 120
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_RELOAD_PAGE"

    const/16 v2, 0x14

    const-string/jumbo v3, "-2111"

    const-string/jumbo v4, "reloadPage"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 125
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSC_CRASH"

    const/16 v2, 0x15

    const-string/jumbo v3, "-2112"

    const-string/jumbo v4, "weexjscCrash"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

    .line 131
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSDOWNLOAD_START"

    const/16 v2, 0x16

    const-string/jumbo v3, "-2201"

    const-string/jumbo v4, "js bundle download start"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSDOWNLOAD_START:Lcom/taobao/weex/common/WXErrorCode;

    .line 133
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSBUNDLE_DOWNLOAD"

    const/16 v2, 0x17

    const-string/jumbo v3, "-2299"

    const-string/jumbo v4, "js bundle download err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    .line 135
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSBUNDLE_EMPTY"

    const/16 v2, 0x18

    const-string/jumbo v3, "-2203"

    const-string/jumbo v4, "js bundle empty"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_EMPTY:Lcom/taobao/weex/common/WXErrorCode;

    .line 137
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JSDOWNLOAD_END"

    const/16 v2, 0x19

    const-string/jumbo v3, "-2299"

    const-string/jumbo v4, "js bundle download end"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSDOWNLOAD_END:Lcom/taobao/weex/common/WXErrorCode;

    .line 142
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JS_FRAMEWORK"

    const/16 v2, 0x1a

    const-string/jumbo v3, "-1002"

    const-string/jumbo v4, "js framework error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    .line 144
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v1, "WX_ERR_JS_REINIT_FRAMEWORK"

    const/16 v2, 0x1b

    const-string/jumbo v3, "-1003"

    const-string/jumbo v4, "js reinit framework error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/common/WXErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_REINIT_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    .line 21
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/taobao/weex/common/WXErrorCode;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_LOAD_JSLIB:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_BAD_SO:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_COPY_FROM_APK:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSFUNC_PARAM:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSON_OBJECT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_CREATEBODY:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATEATTRS:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_UPDATESTYLE:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_MOVEELEMENT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_ADDEVENT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_REMOVEEVENT:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_CREATEFINISH:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_DOM_REFRESHFINISH:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_DOM_SCROLLTO:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSC_CRASH:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSDOWNLOAD_START:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_DOWNLOAD:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSBUNDLE_EMPTY:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JSDOWNLOAD_END:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_REINIT_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/weex/common/WXErrorCode;->appendMsg:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/taobao/weex/common/WXErrorCode;->errorCode:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/taobao/weex/common/WXErrorCode;->errorMsg:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/common/WXErrorCode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method


# virtual methods
.method public appendErrMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/taobao/weex/common/WXErrorCode;->appendMsg:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public getArgs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/taobao/weex/common/WXErrorCode;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/taobao/weex/common/WXErrorCode;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXErrorCode;->errorMsg:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/taobao/weex/common/WXErrorCode;->appendMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/taobao/weex/common/WXErrorCode;->args:Ljava/lang/String;

    .line 176
    return-void
.end method

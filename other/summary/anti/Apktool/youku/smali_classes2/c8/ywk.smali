.class public Lc8/ywk;
.super Ljava/lang/Object;
.source "FreeFlowWebUtil.java"


# static fields
.field public static final CHINA_MOBILE:Ljava/lang/String; = "mobile"

.field public static final CHINA_TELETCOM:Ljava/lang/String; = "telecom"

.field public static final CHINA_UNCIOM:Ljava/lang/String; = "unicom"

.field public static final KEY_HEADER_PARAMS:Ljava/lang/String; = "youku-header"

.field public static final OFFLINE_FREEFLOW_WEBURL:Ljava/lang/String; = "http://4g.youku.com/wl/flowmall"

.field public static final PASSWORD_CRYPT_KEY:Ljava/lang/String; = "8KVx!%)qCm6"

.field public static final TEST_FREEFLOW_WEBURL:Ljava/lang/String; = "http://106.11.47.15/wl/flowmall"

.field public static default_freeflow_weburl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "http://4g.youku.com/wl/flowmall"

    sput-object v0, Lc8/ywk;->default_freeflow_weburl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

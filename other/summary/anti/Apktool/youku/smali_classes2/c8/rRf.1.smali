.class public Lc8/rRf;
.super Ljava/lang/Object;
.source "UpdateConstant.java"


# static fields
.field public static ACCS_SOURCE:Ljava/lang/String; = null

.field public static final DYNAMIC:Ljava/lang/String; = "dynamic"

.field public static final HOTPATCH:Ljava/lang/String; = "hotpatch"

.field public static JS:Ljava/lang/String; = null

.field public static MTOP_SOURCE:Ljava/lang/String; = null

.field public static PREVIOUS_UPDATE_TIME:Ljava/lang/String; = null

.field public static SCAN:Ljava/lang/String; = null

.field public static final UPDATE_ACTION:Ljava/lang/String; = "com.taobao.update.UpdateBroadcast"

.field public static UPDATE_CACHE_HOUR:Ljava/lang/String;

.field public static UPDATE_CONFIG_GROUP:Ljava/lang/String;

.field public static UPDATE_FROM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "accs"

    sput-object v0, Lc8/rRf;->ACCS_SOURCE:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "mtop"

    sput-object v0, Lc8/rRf;->MTOP_SOURCE:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "scan"

    sput-object v0, Lc8/rRf;->SCAN:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "js"

    sput-object v0, Lc8/rRf;->JS:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "android_update"

    sput-object v0, Lc8/rRf;->UPDATE_CONFIG_GROUP:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "update_cache_hour"

    sput-object v0, Lc8/rRf;->UPDATE_CACHE_HOUR:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "previous_update_time"

    sput-object v0, Lc8/rRf;->PREVIOUS_UPDATE_TIME:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "update_from"

    sput-object v0, Lc8/rRf;->UPDATE_FROM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

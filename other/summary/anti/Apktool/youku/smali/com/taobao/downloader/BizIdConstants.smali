.class public Lcom/taobao/downloader/BizIdConstants;
.super Ljava/lang/Object;
.source "BizIdConstants.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATABORD:Ljava/lang/String; = "databord"

.field public static final DEX_PATCH:Ljava/lang/String; = "dexpatch"

.field public static final LAB:Ljava/lang/String; = "lab"

.field public static final LIGHTAPK:Ljava/lang/String; = "lightapk"

.field public static final OCEAN:Ljava/lang/String; = "ocean"

.field public static final SILENCE:Ljava/lang/String; = "silence"

.field public static final SILENCE_BUCHANG:Ljava/lang/String; = "silence-buchang"

.field public static final TAOLIB:Ljava/lang/String; = "taolib"

.field public static final TAO_GAME:Ljava/lang/String; = "taobaogame"

.field public static final TB_CLOAK_ROOM:Ljava/lang/String; = "my3dZone"

.field public static final TRADE:Ljava/lang/String; = "trade"

.field public static final UPDATE_APK:Ljava/lang/String; = "apkupdate"

.field public static final UPDATE_BUNDLE:Ljava/lang/String; = "bundleupdate"

.field public static final UPDATE_PATCH:Ljava/lang/String; = "hotpatch"

.field public static final UPDATE_X86LIBS:Ljava/lang/String; = "x86libsupdate"

.field public static final WINDVANE:Ljava/lang/String; = "windvane"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/taobao/downloader/BizIdConstants$1;

    invoke-direct {v0}, Lcom/taobao/downloader/BizIdConstants$1;-><init>()V

    sput-object v0, Lcom/taobao/downloader/BizIdConstants;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPriorityByBiz(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    sget-object v0, Lcom/taobao/downloader/BizIdConstants;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 57
    if-nez v0, :cond_1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.class public Lc8/Rng;
.super Ljava/lang/Object;
.source "AntBuilder.java"


# static fields
.field public static final ORANGE_ABTEST_CONFIG:Ljava/lang/String; = "abtest_config"

.field public static final ORANGE_ABTEST_SDK_CONFIG:Ljava/lang/String; = "abtest_sdk_config"

.field public static final ORANGE_ABTEST_WHITELIST:Ljava/lang/String; = "abtest_white_list"


# instance fields
.field public deviceInfoFetcher:Lc8/eog;

.field public mtop:Lc8/AOp;

.field public orangeKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timeStamp:Lc8/fog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lc8/hB;
.super Ljava/lang/Object;
.source "AtlasMonitor.java"


# static fields
.field public static final CONTAINER_APPEND_ASSETPATH_FAIL:Ljava/lang/String; = "container_append_assetpath_fail"

.field public static final CONTAINER_BUNDLEINFO_PARSE_FAIL:Ljava/lang/String; = "container_bundleinfo_parse_fail"

.field public static final CONTAINER_BUNDLE_SOURCE_MISMATCH:Ljava/lang/String; = "container_bundle_mismatch"

.field public static final CONTAINER_BUNDLE_SOURCE_UNZIP_FAIL:Ljava/lang/String; = "container_bundle_unzip_fail"

.field public static final CONTAINER_DEXOPT_FAIL:Ljava/lang/String; = "container_dexopt_fail"

.field public static final CONTAINER_SOLIB_UNZIP_FAIL:Ljava/lang/String; = "container_solib_unzip_fail"

.field public static final DD_BUNDLE_MISMATCH:Ljava/lang/String; = "dd_bundle_mismatch"

.field public static final DD_BUNDLE_RESOLVEFAIL:Ljava/lang/String; = "bundle_resolve_fail"

.field public static final WALKROUND_GETLAYOUT:Ljava/lang/String; = "walkround_getlayout"

.field private static externalMonitor:Lc8/eB;

.field private static singleton:Lc8/hB;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/hB;
    .locals 2

    .prologue
    .line 237
    const-class v1, Lc8/hB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/hB;->singleton:Lc8/hB;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lc8/hB;

    invoke-direct {v0}, Lc8/hB;-><init>()V

    sput-object v0, Lc8/hB;->singleton:Lc8/hB;

    .line 240
    :cond_0
    sget-object v0, Lc8/hB;->singleton:Lc8/hB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setExternalMonitor(Lc8/eB;)V
    .locals 0
    .param p0, "monitor"    # Lc8/eB;

    .prologue
    .line 244
    sput-object p0, Lc8/hB;->externalMonitor:Lc8/eB;

    .line 245
    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errCode"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p2, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lc8/hB;->externalMonitor:Lc8/eB;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lc8/hB;->externalMonitor:Lc8/eB;

    invoke-interface {v0, p1, p2, p3}, Lc8/eB;->report(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 251
    :cond_0
    return-void
.end method

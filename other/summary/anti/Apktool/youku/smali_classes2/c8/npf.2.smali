.class public Lc8/npf;
.super Ljava/lang/Object;
.source "UserTrackUtils.java"


# static fields
.field public static final ARG1_APP_INSTALL_INFO:Ljava/lang/String; = "mgr_app_install_info"

.field public static final ARG1_FLOW_TRACK:Ljava/lang/String; = "mgr_flow_track"

.field public static final ARG1_GATEWAY:Ljava/lang/String; = "applink_gateway"

.field public static final ARG1_INCOMING_AUTHORIZED:Ljava/lang/String; = "mgr_flow_get_pass"

.field public static final ARG1_INCOMING_BLOCKED:Ljava/lang/String; = "mgr_flow_get_handle"

.field public static final ARG1_OUTGOING_AUTHORIZED:Ljava/lang/String; = "mgr_flow_lost_fly"

.field public static final ARG1_OUTGOING_BLOCKED:Ljava/lang/String; = "mgr_flow_lost_handle"

.field public static final ARG1_OUTGOING_INTERMEDIATE:Ljava/lang/String; = "mgr_std_ptl"

.field public static final ARG1_SYSTEM_APPLICATION:Ljava/lang/String; = "mgr_flow_lost_to_sys"

.field public static final MODULE_TAOKE:Ljava/lang/String; = "applink_taoke_biz"

.field public static final PAGE:Ljava/lang/String; = "Page_FlowCustoms"

.field public static final PAGE_FLOW_TRACK:Ljava/lang/String; = "applink_flow_track"

.field public static final POINT_CLEAR_E:Ljava/lang/String; = "applink_taoke_e_clear"

.field public static final POINT_HANDLE_URL:Ljava/lang/String; = "applink_taoke_urlHandle"

.field public static final POINT_PASS_E:Ljava/lang/String; = "applink_taoke_e_pass"

.field public static final POINT_SET_E:Ljava/lang/String; = "applink_taoke_e_set"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitCounter(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    .line 51
    return-void
.end method

.method public static sendCustomHit(ILjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "eventId"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "Page_FlowCustoms"

    move v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 41
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public static sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 45
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "Page_FlowCustoms"

    const/16 v2, 0x4e1f

    move-object v3, p0

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 47
    return-void
.end method

.class public Lc8/Yof;
.super Ljava/lang/Object;
.source "AlibcUMIDPoint.java"


# static fields
.field public static final ARG:Ljava/lang/String; = "mgr_app_umid_info"

.field public static final UMID:Ljava/lang/String; = "umid"


# instance fields
.field public umid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "umid"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lc8/Yof;->umid:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public send()V
    .locals 4

    .prologue
    .line 31
    iget-object v1, p0, Lc8/Yof;->umid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "umid"

    iget-object v2, p0, Lc8/Yof;->umid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    if-eqz v1, :cond_1

    .line 39
    const-string/jumbo v2, "appkey"

    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v1, Lc8/unf;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    const-string/jumbo v1, "DeviceProbe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u53d1\u9001\u57cb\u70b9: arg = mgr_app_umid_info , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "mgr_app_umid_info"

    invoke-static {v1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 39
    :cond_2
    sget-object v1, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v1, Lc8/unf;->appKey:Ljava/lang/String;

    goto :goto_1
.end method

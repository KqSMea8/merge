.class public Lc8/zpf;
.super Ljava/lang/Object;
.source "VisaInfoBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ypf;
    }
.end annotation


# static fields
.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final VISA_API:Ljava/lang/String; = "mtop.taobao.baichuan.afc.visainfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static sendRequest(Ljava/lang/String;Lc8/ypf;)V
    .locals 6
    .param p0, "visaCode"    # Ljava/lang/String;
    .param p1, "listener"    # Lc8/ypf;

    .prologue
    .line 22
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v3, "visaParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "code"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Lc8/wof;->getInstance()Lc8/wof;

    move-result-object v0

    const-string/jumbo v1, "mtop.taobao.baichuan.afc.visainfo"

    const-string/jumbo v2, "1.0"

    const/4 v4, 0x0

    new-instance v5, Lc8/xpf;

    invoke-direct {v5, p1}, Lc8/xpf;-><init>(Lc8/ypf;)V

    invoke-virtual/range {v0 .. v5}, Lc8/wof;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V

    .line 46
    return-void
.end method

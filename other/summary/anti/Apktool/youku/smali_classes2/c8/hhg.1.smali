.class public Lc8/hhg;
.super Lc8/Jhg;
.source "ProGuard"


# static fields
.field public static final GRAPH_OPEN_ID:Ljava/lang/String; = "oauth2.0/m_me"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/Fhg;Lc8/thg;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p2, p3}, Lc8/Jhg;-><init>(Lc8/Fhg;Lc8/thg;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc8/thg;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lc8/Jhg;-><init>(Lc8/thg;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getOpenId(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 67
    invoke-virtual {p0}, Lc8/hhg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 68
    new-instance v5, Lc8/Ihg;

    invoke-direct {v5, p0, p1}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 69
    iget-object v0, p0, Lc8/hhg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "oauth2.0/m_me"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 71
    return-void
.end method

.method public getTenPayAddr(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 55
    invoke-virtual {p0}, Lc8/hhg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 56
    const-string/jumbo v0, "ver"

    const-string/jumbo v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v5, Lc8/Ihg;

    invoke-direct {v5, p0, p1}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 58
    iget-object v0, p0, Lc8/hhg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cft_info/get_tenpay_addr"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 60
    return-void
.end method

.method public getUserInfo(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 30
    invoke-virtual {p0}, Lc8/hhg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 31
    new-instance v5, Lc8/Ihg;

    invoke-direct {v5, p0, p1}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 32
    iget-object v0, p0, Lc8/hhg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user/get_simple_userinfo"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 34
    return-void
.end method

.method public getVipUserInfo(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 37
    invoke-virtual {p0}, Lc8/hhg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 38
    new-instance v5, Lc8/Ihg;

    invoke-direct {v5, p0, p1}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 39
    iget-object v0, p0, Lc8/hhg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user/get_vip_info"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 41
    return-void
.end method

.method public getVipUserRichInfo(Lc8/Dmg;)V
    .locals 6

    .prologue
    .line 44
    invoke-virtual {p0}, Lc8/hhg;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 45
    new-instance v5, Lc8/Ihg;

    invoke-direct {v5, p0, p1}, Lc8/Ihg;-><init>(Lc8/Jhg;Lc8/Dmg;)V

    .line 46
    iget-object v0, p0, Lc8/hhg;->b:Lc8/thg;

    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user/get_vip_rich_info"

    const-string/jumbo v4, "GET"

    invoke-static/range {v0 .. v5}, Lc8/cmg;->requestAsync(Lc8/thg;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lc8/Cmg;)V

    .line 48
    return-void
.end method

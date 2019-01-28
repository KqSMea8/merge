.class public Lc8/tag;
.super Ljava/lang/Object;
.source "RenderActionContextImpl.java"

# interfaces
.implements Lc8/sYf;


# instance fields
.field private mRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field

.field private mWXSDKInstance:Lc8/nVf;


# direct methods
.method public constructor <init>(Lc8/nVf;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lc8/tag;->mWXSDKInstance:Lc8/nVf;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tag;->mWXSDKInstance:Lc8/nVf;

    .line 67
    iget-object v0, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    return-void
.end method

.method public getComponent(Ljava/lang/String;)Lc8/tbg;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    return-object v0
.end method

.method public getInstance()Lc8/nVf;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/tag;->mWXSDKInstance:Lc8/nVf;

    return-object v0
.end method

.method public getWXSDKInstance()Lc8/nVf;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/tag;->mWXSDKInstance:Lc8/nVf;

    return-object v0
.end method

.method public registerComponent(Ljava/lang/String;Lc8/tbg;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "comp"    # Lc8/tbg;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v1, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 90
    .local v0, "component":Lc8/tbg;
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {v0, p2}, Lc8/tbg;->updateExtra(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setLayout(Ljava/lang/String;Lc8/HYf;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "domObject"    # Lc8/HYf;

    .prologue
    .line 78
    iget-object v1, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .line 79
    .local v0, "component":Lc8/tbg;
    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p2}, Lc8/tbg;->setLayout(Lc8/qYf;)V

    goto :goto_0
.end method

.method public unregisterComponent(Ljava/lang/String;)Lc8/tbg;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lc8/tag;->mRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    return-object v0
.end method

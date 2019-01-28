.class public Lc8/INb;
.super Ljava/lang/Object;
.source "KaleidoscopeConfig.java"


# instance fields
.field private kaleidoscopeRenderPluginFactoryHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/NNb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/INb;->kaleidoscopeRenderPluginFactoryHashMap:Ljava/util/HashMap;

    .line 17
    return-void
.end method


# virtual methods
.method public getKaleidoscopeRenderPlugin(Ljava/lang/String;)Lc8/NNb;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/INb;->kaleidoscopeRenderPluginFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/NNb;

    return-object v0
.end method

.method public isSupportRenderPlugin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/INb;->kaleidoscopeRenderPluginFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSupportRenderPlugin(Ljava/lang/String;Lc8/NNb;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "kaleidoscopeRenderPlugin"    # Lc8/NNb;

    .prologue
    .line 20
    iget-object v0, p0, Lc8/INb;->kaleidoscopeRenderPluginFactoryHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

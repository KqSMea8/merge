.class public Lc8/WVf;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Lc8/UVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performPickTime(Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$callback:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/eWf;Lc8/EWf;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lc8/WVf;->this$0:Lc8/eWf;

    iput-object p2, p0, Lc8/WVf;->val$callback:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(ZLjava/lang/String;)V
    .locals 3
    .param p1, "set"    # Z
    .param p2, "result"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    .line 139
    if-eqz p1, :cond_0

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 141
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v1, "data"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lc8/WVf;->val$callback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 150
    :goto_0
    return-void

    .line 145
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 146
    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v1, "data"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lc8/WVf;->val$callback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

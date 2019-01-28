.class public Lc8/nbg;
.super Ljava/lang/Object;
.source "WXComponent.java"

# interfaces
.implements Lc8/rbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tbg;->addEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/tbg;)V
    .locals 0

    .prologue
    .line 1037
    .local p0, "this":Lc8/nbg;, "Lcom/taobao/weex/ui/component/WXComponent.4;"
    iput-object p1, p0, Lc8/nbg;->this$0:Lc8/tbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1039
    .local p0, "this":Lc8/nbg;, "Lcom/taobao/weex/ui/component/WXComponent.4;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1040
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    iget-object v2, p0, Lc8/nbg;->this$0:Lc8/tbg;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "focus"

    :goto_0
    invoke-virtual {v2, v1, v0}, Lc8/tbg;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1042
    return-void

    .line 1041
    :cond_0
    const-string/jumbo v1, "blur"

    goto :goto_0
.end method

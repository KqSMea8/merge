.class public Lc8/Khb;
.super Ljava/lang/Object;
.source "UserTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lhb;->send(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lhb;

.field final synthetic val$appInfo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lc8/Lhb;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lhb;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/Khb;->this$0:Lc8/Lhb;

    iput-object p2, p0, Lc8/Khb;->val$appInfo:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lc8/Xgb;

    invoke-direct {v0}, Lc8/Xgb;-><init>()V

    .line 54
    .local v0, "request":Lc8/Xgb;
    const-string/jumbo v1, "mtop.taobao.havana.mlogin.userTracerLog"

    iput-object v1, v0, Lc8/Xgb;->target:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "1.0"

    iput-object v1, v0, Lc8/Xgb;->version:Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "userTracerInfo"

    iget-object v2, p0, Lc8/Khb;->val$appInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string/jumbo v1, "ts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/Xgb;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-class v1, Lc8/thb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/thb;

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lc8/thb;->invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    .line 61
    return-void
.end method

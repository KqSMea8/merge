.class public Lc8/vqb;
.super Ljava/lang/Object;
.source "WXAliPayModule.java"

# interfaces
.implements Lc8/Kob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wqb;->tradePay(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wqb;

.field final synthetic val$failureCb:Lc8/EWf;

.field final synthetic val$successCb:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/wqb;Lc8/EWf;Lc8/EWf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wqb;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/vqb;->this$0:Lc8/wqb;

    iput-object p2, p0, Lc8/vqb;->val$successCb:Lc8/EWf;

    iput-object p3, p0, Lc8/vqb;->val$failureCb:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "failure"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/vqb;->val$failureCb:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public success(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "success"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/vqb;->val$successCb:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

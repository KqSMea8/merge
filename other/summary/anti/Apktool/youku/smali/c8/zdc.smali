.class public Lc8/zdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Adc;->onUMIDInitFinishedEx(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Adc;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lc8/Adc;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/zdc;->this$1:Lc8/Adc;

    iput p2, p0, Lc8/zdc;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    iget v1, p0, Lc8/zdc;->val$code:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 170
    sput-boolean v3, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sgInited:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "errorCode"

    const-string/jumbo v2, "SecurityGuardManagerInit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v1, "errorCode"

    iget v2, p0, Lc8/zdc;->val$code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v1

    invoke-interface {v1, v3, v0}, Lc8/Vcc;->onResult(ILjava/util/Map;)V

    .line 181
    .end local v0    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->sgInited:Z

    .line 179
    iget-object v1, p0, Lc8/zdc;->this$1:Lc8/Adc;

    iget-object v1, v1, Lc8/Adc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v1}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initAfterSGInit()V

    goto :goto_0
.end method

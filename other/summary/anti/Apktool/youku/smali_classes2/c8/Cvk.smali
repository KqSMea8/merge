.class public Lc8/Cvk;
.super Ljava/lang/Object;
.source "YoukuFreeFlowApi.java"

# interfaces
.implements Lc8/svk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dvk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Dvk;


# direct methods
.method private constructor <init>(Lc8/Dvk;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Dvk;Lc8/Bvk;)V
    .locals 0
    .param p1, "x0"    # Lc8/Dvk;
    .param p2, "x1"    # Lc8/Bvk;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lc8/Cvk;-><init>(Lc8/Dvk;)V

    return-void
.end method


# virtual methods
.method public onCache(Ljava/lang/String;Lc8/Avk;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ytFreeFlowResult"    # Lc8/Avk;

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1, v2, p1, p2}, Lc8/Dvk;->access$100(Lc8/Dvk;ILjava/lang/String;Lc8/Avk;)V

    .line 174
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1, p1}, Lc8/Dvk;->access$202(Lc8/Dvk;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1, p2}, Lc8/Dvk;->access$302(Lc8/Dvk;Lc8/Avk;)Lc8/Avk;

    .line 177
    if-nez p2, :cond_1

    const-string/jumbo v0, "null"

    .line 178
    .local v0, "logStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1}, Lc8/Dvk;->access$400(Lc8/Dvk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-virtual {v1}, Lc8/Dvk;->showFreeToast()V

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCache: id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ytFreeFlowResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f-\u7f13\u5b58"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    return-void

    .line 177
    .end local v0    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lc8/Avk;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onUpdate(Ljava/lang/String;Lc8/Avk;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ytFreeFlowResult"    # Lc8/Avk;

    .prologue
    .line 187
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Lc8/Dvk;->access$100(Lc8/Dvk;ILjava/lang/String;Lc8/Avk;)V

    .line 189
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1, p1}, Lc8/Dvk;->access$202(Lc8/Dvk;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1, p2}, Lc8/Dvk;->access$302(Lc8/Dvk;Lc8/Avk;)Lc8/Avk;

    .line 192
    if-nez p2, :cond_1

    const-string/jumbo v0, "null"

    .line 193
    .local v0, "logStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-static {v1}, Lc8/Dvk;->access$400(Lc8/Dvk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lc8/Cvk;->this$0:Lc8/Dvk;

    invoke-virtual {v1}, Lc8/Dvk;->showFreeToast()V

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdate: id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ytFreeFlowResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u540c\u6b65\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f-\u5b9e\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    return-void

    .line 192
    .end local v0    # "logStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lc8/Avk;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

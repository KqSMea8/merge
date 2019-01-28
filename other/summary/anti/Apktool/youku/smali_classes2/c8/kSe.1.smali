.class public Lc8/kSe;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lc8/KSe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationInterceptorChain"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final index:I

.field private final request:Lc8/VSe;

.field final synthetic this$0:Lc8/mSe;


# direct methods
.method constructor <init>(Lc8/mSe;ILc8/VSe;Z)V
    .locals 0
    .param p1, "this$0"    # Lc8/mSe;
    .param p2, "index"    # I
    .param p3, "request"    # Lc8/VSe;
    .param p4, "forWebSocket"    # Z

    .prologue
    .line 213
    iput-object p1, p0, Lc8/kSe;->this$0:Lc8/mSe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lc8/kSe;->index:I

    .line 215
    iput-object p3, p0, Lc8/kSe;->request:Lc8/VSe;

    .line 216
    iput-boolean p4, p0, Lc8/kSe;->forWebSocket:Z

    .line 217
    return-void
.end method


# virtual methods
.method public connection()Lc8/sSe;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public proceed(Lc8/VSe;)Lc8/cTe;
    .locals 6
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget v3, p0, Lc8/kSe;->index:I

    iget-object v4, p0, Lc8/kSe;->this$0:Lc8/mSe;

    invoke-static {v4}, Lc8/mSe;->access$300(Lc8/mSe;)Lc8/QSe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/QSe;->interceptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 230
    new-instance v0, Lc8/kSe;

    iget-object v3, p0, Lc8/kSe;->this$0:Lc8/mSe;

    iget v4, p0, Lc8/kSe;->index:I

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, p0, Lc8/kSe;->forWebSocket:Z

    invoke-direct {v0, v3, v4, p1, v5}, Lc8/kSe;-><init>(Lc8/mSe;ILc8/VSe;Z)V

    .line 231
    .local v0, "chain":Lc8/KSe;
    iget-object v3, p0, Lc8/kSe;->this$0:Lc8/mSe;

    invoke-static {v3}, Lc8/mSe;->access$300(Lc8/mSe;)Lc8/QSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/QSe;->interceptors()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lc8/kSe;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/LSe;

    .line 232
    .local v2, "interceptor":Lc8/LSe;
    invoke-interface {v2, v0}, Lc8/LSe;->intercept(Lc8/KSe;)Lc8/cTe;

    move-result-object v1

    .line 234
    .local v1, "interceptedResponse":Lc8/cTe;
    if-nez v1, :cond_1

    .line 235
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "application interceptor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " returned null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    .end local v0    # "chain":Lc8/KSe;
    .end local v1    # "interceptedResponse":Lc8/cTe;
    .end local v2    # "interceptor":Lc8/LSe;
    :cond_0
    iget-object v3, p0, Lc8/kSe;->this$0:Lc8/mSe;

    iget-boolean v4, p0, Lc8/kSe;->forWebSocket:Z

    invoke-virtual {v3, p1, v4}, Lc8/mSe;->getResponse(Lc8/VSe;Z)Lc8/cTe;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public request()Lc8/VSe;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/kSe;->request:Lc8/VSe;

    return-object v0
.end method

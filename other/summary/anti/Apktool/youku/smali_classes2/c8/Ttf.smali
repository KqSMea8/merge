.class public final Lc8/Ttf;
.super Ljava/lang/Object;
.source "IndexUpdateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Utf;->checkIndexUpdate(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$appIndexVersion:Ljava/lang/String;

.field final synthetic val$reqRetryNum:I

.field final synthetic val$versionIndexVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lc8/Ttf;->val$reqRetryNum:I

    iput-object p2, p0, Lc8/Ttf;->val$appIndexVersion:Ljava/lang/String;

    iput-object p3, p0, Lc8/Ttf;->val$versionIndexVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 59
    new-instance v0, Lc8/Stf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "/checkUpdate"

    iget v5, p0, Lc8/Ttf;->val$reqRetryNum:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/Stf;-><init>(Lc8/Ttf;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 79
    .local v0, "indexUpdateReq":Lc8/Ltf;, "Lcom/taobao/orange/request/BaseRequest<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lc8/Ltf;->syncRequest()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "result":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v6, v1}, Lc8/Utf;->updateIndex(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

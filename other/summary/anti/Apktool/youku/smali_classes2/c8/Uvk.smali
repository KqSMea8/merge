.class public Lc8/Uvk;
.super Ljava/lang/Object;
.source "UnicomMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->getVideoOrAdUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Runnable;ZLc8/Gvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;

.field final synthetic val$callBack:Lc8/Gvk;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$index:I

.field final synthetic val$quality:Ljava/lang/String;

.field final synthetic val$vid:Ljava/lang/String;

.field final synthetic val$videoName:Ljava/lang/String;

.field final synthetic val$videoUrls:Ljava/util/List;

.field final synthetic val$woVideoUrls:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/Xvk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/concurrent/CountDownLatch;Lc8/Gvk;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lc8/Uvk;->this$0:Lc8/Xvk;

    iput-object p2, p0, Lc8/Uvk;->val$vid:Ljava/lang/String;

    iput-object p3, p0, Lc8/Uvk;->val$quality:Ljava/lang/String;

    iput-object p4, p0, Lc8/Uvk;->val$videoName:Ljava/lang/String;

    iput-object p5, p0, Lc8/Uvk;->val$videoUrls:Ljava/util/List;

    iput p6, p0, Lc8/Uvk;->val$index:I

    iput-object p7, p0, Lc8/Uvk;->val$woVideoUrls:Ljava/util/Map;

    iput-object p8, p0, Lc8/Uvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p9, p0, Lc8/Uvk;->val$callBack:Lc8/Gvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 247
    iget-object v0, p0, Lc8/Uvk;->this$0:Lc8/Xvk;

    iget-object v1, p0, Lc8/Uvk;->val$vid:Ljava/lang/String;

    iget-object v2, p0, Lc8/Uvk;->val$quality:Ljava/lang/String;

    iget-object v3, p0, Lc8/Uvk;->val$videoName:Ljava/lang/String;

    iget-object v4, p0, Lc8/Uvk;->val$videoUrls:Ljava/util/List;

    iget v5, p0, Lc8/Uvk;->val$index:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lc8/Uvk;->val$woVideoUrls:Ljava/util/Map;

    iget-object v6, p0, Lc8/Uvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iget v7, p0, Lc8/Uvk;->val$index:I

    iget-object v8, p0, Lc8/Uvk;->val$callBack:Lc8/Gvk;

    invoke-static/range {v0 .. v8}, Lc8/Xvk;->access$500(Lc8/Xvk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;ILc8/Gvk;)V

    .line 248
    return-void
.end method

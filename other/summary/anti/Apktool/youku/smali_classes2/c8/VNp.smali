.class public Lc8/VNp;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/YNp;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/YNp;

.field final synthetic val$futureTask:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lc8/YNp;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lc8/VNp;->this$0:Lc8/YNp;

    iput-object p2, p0, Lc8/VNp;->val$futureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/VNp;->val$futureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 102
    return-void
.end method

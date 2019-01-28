.class public Lc8/WNp;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YNp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceIdDomain"
.end annotation


# instance fields
.field public mCreated:Z

.field public mDeviceId:Ljava/lang/String;

.field public mLastFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/YNp;


# direct methods
.method public constructor <init>(Lc8/YNp;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/WNp;->this$0:Lc8/YNp;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lc8/WNp;->mLastFuture:Ljava/util/concurrent/Future;

    .line 276
    return-void
.end method

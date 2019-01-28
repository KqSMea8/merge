.class public Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "LocalAidlServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Landroid/content/ServiceConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final app:Landroid/app/Application;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final binder:Landroid/os/IBinder;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final intent:Landroid/content/Intent;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final service:Landroid/app/Service;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/Service;)V
    .locals 0
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "service"    # Landroid/app/Service;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->app:Landroid/app/Application;

    .line 235
    iput-object p2, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->intent:Landroid/content/Intent;

    .line 236
    iput-object p3, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->binder:Landroid/os/IBinder;

    .line 237
    iput-object p4, p0, Lcom/taobao/android/service/LocalAidlServices$ServiceRecord;->service:Landroid/app/Service;

    .line 238
    return-void
.end method

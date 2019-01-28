.class public Lc8/bA;
.super Landroid/os/Binder;
.source "BaseDelegateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalServiceRecord"
.end annotation


# instance fields
.field public final activeConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public calledStart:Z

.field final component:Landroid/content/ComponentName;

.field public delayStop:Z


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    .line 233
    iput-boolean v1, p0, Lc8/bA;->delayStop:Z

    .line 234
    iput-boolean v1, p0, Lc8/bA;->calledStart:Z

    .line 237
    iput-object p1, p0, Lc8/bA;->component:Landroid/content/ComponentName;

    .line 238
    return-void
.end method

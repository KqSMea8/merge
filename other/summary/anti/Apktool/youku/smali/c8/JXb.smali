.class public Lc8/JXb;
.super Ljava/lang/Object;
.source "AugmentedLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetTag"
.end annotation


# instance fields
.field private final weakTargetView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/JXb;->weakTargetView:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lc8/IXb;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lc8/IXb;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lc8/JXb;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lc8/JXb;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lc8/JXb;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/JXb;->weakTargetView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

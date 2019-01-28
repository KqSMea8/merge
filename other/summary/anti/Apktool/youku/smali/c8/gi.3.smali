.class public Lc8/gi;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"

# interfaces
.implements Lc8/ei;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hi;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hi;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Lc8/hi;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hi;

    .prologue
    .line 128
    iput-object p1, p0, Lc8/gi;->this$0:Lc8/hi;

    iput-object p2, p0, Lc8/gi;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/gi;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 132
    return-void
.end method

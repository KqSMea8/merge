.class public Lc8/EYb;
.super Ljava/lang/Object;
.source "TrackingService.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OYb;


# direct methods
.method constructor <init>(Lc8/OYb;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/EYb;->this$0:Lc8/OYb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    :try_start_0
    iget-object v0, p0, Lc8/EYb;->this$0:Lc8/OYb;

    invoke-static {v0}, Lc8/OYb;->access$000(Lc8/OYb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

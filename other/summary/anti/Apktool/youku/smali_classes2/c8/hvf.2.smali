.class public Lc8/hvf;
.super Ljava/lang/Object;
.source "AnimatedImageDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ivf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakFrameTask"
.end annotation


# static fields
.field public static final INVALIDATE_TYPE:I = 0x2

.field public static final NEXT_TYPE:I = 0x1

.field public static final START_TYPE:I = 0x0

.field public static final TIMEOUT_FOR_DRAW_TYPE:I = 0x3


# instance fields
.field private drawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/ivf;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Lc8/ivf;I)V
    .locals 1
    .param p1, "drawable"    # Lc8/ivf;
    .param p2, "t"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/hvf;->drawableRef:Ljava/lang/ref/WeakReference;

    .line 52
    iput p2, p0, Lc8/hvf;->type:I

    .line 53
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lc8/hvf;->drawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ivf;

    .local v0, "nowDrawable":Lc8/ivf;
    if-eqz v0, :cond_0

    .line 59
    iget v1, p0, Lc8/hvf;->type:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {v0}, Lc8/ivf;->onStart()V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-virtual {v0}, Lc8/ivf;->onNextFrame()V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {v0}, Lc8/ivf;->access$000(Lc8/ivf;)V

    goto :goto_0

    .line 71
    :pswitch_3
    invoke-virtual {v0}, Lc8/ivf;->onTimeout4Draw()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

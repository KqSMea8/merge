.class public Lc8/Wdg;
.super Ljava/lang/Object;
.source "WXTimerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ydg;->postOrHoldMessage(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ydg;

.field final synthetic val$funcId:I

.field final synthetic val$instanceId:I

.field final synthetic val$interval:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lc8/Ydg;IIII)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lc8/Wdg;->this$0:Lc8/Ydg;

    iput p2, p0, Lc8/Wdg;->val$what:I

    iput p3, p0, Lc8/Wdg;->val$funcId:I

    iput p4, p0, Lc8/Wdg;->val$interval:I

    iput p5, p0, Lc8/Wdg;->val$instanceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Wdg;->this$0:Lc8/Ydg;

    iget v1, p0, Lc8/Wdg;->val$what:I

    iget v2, p0, Lc8/Wdg;->val$funcId:I

    iget v3, p0, Lc8/Wdg;->val$interval:I

    iget v4, p0, Lc8/Wdg;->val$instanceId:I

    invoke-static {v0, v1, v2, v3, v4}, Lc8/Ydg;->access$000(Lc8/Ydg;IIII)V

    .line 169
    return-void
.end method

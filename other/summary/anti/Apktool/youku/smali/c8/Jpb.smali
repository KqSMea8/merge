.class public Lc8/Jpb;
.super Ljava/lang/Object;
.source "WXTabHeader.java"

# interfaces
.implements Lc8/Hvb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lpb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lpb;


# direct methods
.method constructor <init>(Lc8/Lpb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lpb;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/Jpb;->this$0:Lc8/Lpb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Jpb;->this$0:Lc8/Lpb;

    invoke-static {v0}, Lc8/Lpb;->access$000(Lc8/Lpb;)V

    .line 44
    return-void
.end method

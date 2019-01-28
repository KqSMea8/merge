.class public Lc8/kb;
.super Ljava/lang/Object;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HorizontalSlice"
.end annotation


# instance fields
.field bottom:Lc8/ob;

.field padding:I

.field final synthetic this$0:Lc8/mb;

.field top:Lc8/ob;


# direct methods
.method constructor <init>(Lc8/mb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mb;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/kb;->this$0:Lc8/mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lc8/lb;
.super Ljava/lang/Object;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalSlice"
.end annotation


# instance fields
.field alignment:I

.field left:Lc8/ob;

.field padding:I

.field right:Lc8/ob;

.field final synthetic this$0:Lc8/mb;


# direct methods
.method constructor <init>(Lc8/mb;)V
    .locals 1
    .param p1, "this$0"    # Lc8/mb;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/lb;->this$0:Lc8/mb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lc8/lb;->alignment:I

    return-void
.end method

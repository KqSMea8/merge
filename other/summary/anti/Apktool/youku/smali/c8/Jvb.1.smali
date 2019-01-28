.class public Lc8/Jvb;
.super Ljava/lang/Object;
.source "ElevatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lc8/Kvb;


# direct methods
.method public constructor <init>(Lc8/Kvb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Kvb;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/Jvb;->this$0:Lc8/Kvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

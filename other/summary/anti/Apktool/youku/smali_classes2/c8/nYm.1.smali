.class public Lc8/nYm;
.super Ljava/lang/Thread;
.source "YoukuPopLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oYm;->asyncInitWindvane()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oYm;


# direct methods
.method constructor <init>(Lc8/oYm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/oYm;

    .prologue
    .line 148
    iput-object p1, p0, Lc8/nYm;->this$0:Lc8/oYm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Lc8/HTh;->initWindVane()V

    .line 152
    return-void
.end method

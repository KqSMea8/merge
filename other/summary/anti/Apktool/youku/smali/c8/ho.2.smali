.class public Lc8/ho;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method constructor <init>(Lc8/vo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vo;

    .prologue
    .line 133
    iput-object p1, p0, Lc8/ho;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    iget v0, v0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    invoke-virtual {v0, v2}, Lc8/vo;->doInvalidatePanelMenu(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    iget v0, v0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lc8/vo;->doInvalidatePanelMenu(I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    iput-boolean v2, v0, Lc8/vo;->mInvalidatePanelMenuPosted:Z

    .line 143
    iget-object v0, p0, Lc8/ho;->this$0:Lc8/vo;

    iput v2, v0, Lc8/vo;->mInvalidatePanelMenuFeatures:I

    .line 144
    return-void
.end method

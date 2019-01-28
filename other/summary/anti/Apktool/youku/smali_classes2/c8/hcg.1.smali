.class public Lc8/hcg;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lcg;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lcg;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lc8/lcg;I)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iput p2, p0, Lc8/hcg;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v0, v0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->getRealCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lc8/hcg;->val$index:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v0, v0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->beginFakeDrag()Z

    .line 141
    iget-object v0, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v0, v0, Lc8/lcg;->mViewPager:Lc8/oeg;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lc8/oeg;->fakeDragBy(F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v0, v0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 151
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 147
    :try_start_2
    iget-object v0, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v0, v0, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v0}, Lc8/oeg;->endFakeDrag()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lc8/hcg;->this$0:Lc8/lcg;

    iget-object v1, v1, Lc8/lcg;->mViewPager:Lc8/oeg;

    invoke-virtual {v1}, Lc8/oeg;->endFakeDrag()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 151
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.class public Lc8/dWf;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$dialog:Lc8/Pn;

.field final synthetic val$options:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/eWf;Lc8/Pn;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lc8/dWf;->this$0:Lc8/eWf;

    iput-object p2, p0, Lc8/dWf;->val$dialog:Lc8/Pn;

    iput-object p3, p0, Lc8/dWf;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 275
    iget-object v6, p0, Lc8/dWf;->val$dialog:Lc8/Pn;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lc8/Pn;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 276
    .local v3, "confirm":Landroid/widget/Button;
    iget-object v6, p0, Lc8/dWf;->val$dialog:Lc8/Pn;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lc8/Pn;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 278
    .local v0, "cancel":Landroid/widget/Button;
    if-eqz v3, :cond_1

    .line 279
    iget-object v6, p0, Lc8/dWf;->this$0:Lc8/eWf;

    iget-object v7, p0, Lc8/dWf;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "confirmTitle"

    invoke-static {v6, v7, v8, v10}, Lc8/eWf;->access$300(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 280
    .local v5, "confirmTitle":Ljava/lang/String;
    iget-object v6, p0, Lc8/dWf;->this$0:Lc8/eWf;

    iget-object v7, p0, Lc8/dWf;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "confirmTitleColor"

    invoke-static {v6, v7, v8, v9}, Lc8/eWf;->access$200(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v4

    .line 282
    .local v4, "confirmColor":I
    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 287
    :cond_0
    if-eqz v4, :cond_1

    .line 288
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 289
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 293
    .end local v4    # "confirmColor":I
    .end local v5    # "confirmTitle":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_3

    .line 294
    iget-object v6, p0, Lc8/dWf;->this$0:Lc8/eWf;

    iget-object v7, p0, Lc8/dWf;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "cancelTitle"

    invoke-static {v6, v7, v8, v10}, Lc8/eWf;->access$300(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, "cancelTitle":Ljava/lang/String;
    iget-object v6, p0, Lc8/dWf;->this$0:Lc8/eWf;

    iget-object v7, p0, Lc8/dWf;->val$options:Ljava/util/Map;

    const-string/jumbo v8, "cancelTitleColor"

    invoke-static {v6, v7, v8, v9}, Lc8/eWf;->access$200(Lc8/eWf;Ljava/util/Map;Ljava/lang/String;I)I

    move-result v1

    .line 297
    .local v1, "cancelColor":I
    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :cond_2
    if-eqz v1, :cond_3

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 305
    .end local v1    # "cancelColor":I
    .end local v2    # "cancelTitle":Ljava/lang/String;
    :cond_3
    return-void
.end method

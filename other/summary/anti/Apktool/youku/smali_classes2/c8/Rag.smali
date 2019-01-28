.class public Lc8/Rag;
.super Ljava/lang/Object;
.source "AbstractEditComponent.java"

# interfaces
.implements Lc8/qbg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/abg;->applyOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/abg;


# direct methods
.method constructor <init>(Lc8/abg;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostViewClick()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$100(Lc8/abg;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_1
    return-void

    .line 115
    :sswitch_0
    const-string/jumbo v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$200(Lc8/abg;)V

    .line 118
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-virtual {v0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-virtual {v0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/scg;->interceptFocus()V

    .line 121
    :cond_1
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$300(Lc8/abg;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v1}, Lc8/abg;->access$400(Lc8/abg;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0, v1, v2}, Lc8/Pcg;->pickDate(Ljava/lang/String;Ljava/lang/String;Lc8/abg;)V

    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/abg;->access$200(Lc8/abg;)V

    .line 125
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-virtual {v0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-virtual {v0}, Lc8/abg;->getParent()Lc8/scg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/scg;->interceptFocus()V

    .line 128
    :cond_2
    iget-object v0, p0, Lc8/Rag;->this$0:Lc8/abg;

    invoke-static {v0}, Lc8/Pcg;->pickTime(Lc8/abg;)V

    goto :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x2eefae -> :sswitch_0
        0x3652cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

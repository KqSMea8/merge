.class public Lc8/ytg;
.super Ljava/lang/Object;
.source "UploaderSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Atg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lc8/Atg;

.field final c:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(ILc8/Atg;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "session"    # Lc8/Atg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lc8/ytg;->a:I

    .line 145
    iput-object p2, p0, Lc8/ytg;->b:Lc8/Atg;

    .line 146
    iput-object p3, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    .line 147
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    iget v0, p0, Lc8/ytg;->a:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    invoke-virtual {v1, v0}, Lc8/Atg;->c(Lc8/otg;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    invoke-virtual {v1, v0}, Lc8/Atg;->d(Lc8/otg;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    iget-object v1, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lc8/utg;

    invoke-virtual {v2, v0, v1}, Lc8/Atg;->b(Lc8/otg;Lc8/utg;)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v2, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    iget-object v1, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lc8/ptg;

    invoke-virtual {v2, v0, v1}, Lc8/Atg;->b(Lc8/otg;Lc8/ptg;)V

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v2, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    iget-object v1, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1, v4}, Lc8/Atg;->a(Lc8/otg;IZ)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v2, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    iget-object v1, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1, v5}, Lc8/Atg;->a(Lc8/otg;IZ)V

    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v3, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/xtg;

    iget-object v1, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lc8/Lsg;

    iget-object v2, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    check-cast v2, Lc8/otg;

    invoke-virtual {v3, v0, v1, v2}, Lc8/Atg;->b(Lc8/xtg;Lc8/Lsg;Lc8/otg;)V

    goto/16 :goto_0

    .line 181
    :pswitch_7
    iget-object v1, p0, Lc8/ytg;->b:Lc8/Atg;

    iget-object v0, p0, Lc8/ytg;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lc8/otg;

    invoke-virtual {v1, v0}, Lc8/Atg;->b(Lc8/otg;)V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

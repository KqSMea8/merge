.class public Lc8/tkd;
.super Lc8/Vjd;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ukd;->create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Vjd",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lc8/Vjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/ukd;

.field final synthetic val$gson:Lc8/Gjd;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lc8/omd;


# direct methods
.method constructor <init>(Lc8/ukd;ZZLc8/Gjd;Lc8/omd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ukd;

    .prologue
    .line 120
    iput-object p1, p0, Lc8/tkd;->this$0:Lc8/ukd;

    iput-boolean p2, p0, Lc8/tkd;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lc8/tkd;->val$skipSerialize:Z

    iput-object p4, p0, Lc8/tkd;->val$gson:Lc8/Gjd;

    iput-object p5, p0, Lc8/tkd;->val$type:Lc8/omd;

    invoke-direct {p0}, Lc8/Vjd;-><init>()V

    return-void
.end method

.method private delegate()Lc8/Vjd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lc8/tkd;->delegate:Lc8/Vjd;

    .line 142
    .local v0, "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_0
    iget-object v1, p0, Lc8/tkd;->val$gson:Lc8/Gjd;

    iget-object v2, p0, Lc8/tkd;->this$0:Lc8/ukd;

    iget-object v3, p0, Lc8/tkd;->val$type:Lc8/omd;

    .line 144
    invoke-virtual {v1, v2, v3}, Lc8/Gjd;->getDelegateAdapter(Lc8/Wjd;Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    .end local v0    # "d":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lc8/tkd;->delegate:Lc8/Vjd;

    goto :goto_0
.end method


# virtual methods
.method public read(Lc8/qmd;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lc8/qmd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qmd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lc8/tkd;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lc8/qmd;->skipValue()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lc8/tkd;->delegate()Lc8/Vjd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Vjd;->read(Lc8/qmd;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lc8/smd;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Lc8/smd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/smd;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/tkd;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lc8/smd;->nullValue()Lc8/smd;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lc8/tkd;->delegate()Lc8/Vjd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Vjd;->write(Lc8/smd;Ljava/lang/Object;)V

    goto :goto_0
.end method

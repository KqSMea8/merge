.class public final Lc8/Pkd;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Okd;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lc8/Okd;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 85
    new-instance v0, Lc8/Okd;

    invoke-direct {v0}, Lc8/Okd;-><init>()V

    iput-object v0, p0, Lc8/Pkd;->currentWrite:Lc8/Okd;

    .line 88
    iput-object p1, p0, Lc8/Pkd;->appendable:Ljava/lang/Appendable;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Pkd;->appendable:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 98
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Pkd;->currentWrite:Lc8/Okd;

    iput-object p1, v0, Lc8/Okd;->chars:[C

    .line 93
    iget-object v0, p0, Lc8/Pkd;->appendable:Ljava/lang/Appendable;

    iget-object v1, p0, Lc8/Pkd;->currentWrite:Lc8/Okd;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 94
    return-void
.end method

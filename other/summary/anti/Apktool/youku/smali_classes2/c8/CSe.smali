.class public final Lc8/CSe;
.super Ljava/lang/Object;
.source "FormEncodingBuilder.java"


# static fields
.field private static final CONTENT_TYPE:Lc8/MSe;


# instance fields
.field private final content:Lc8/YVp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    .line 26
    invoke-static {v0}, Lc8/MSe;->parse(Ljava/lang/String;)Lc8/MSe;

    move-result-object v0

    sput-object v0, Lc8/CSe;->CONTENT_TYPE:Lc8/MSe;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    iput-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lc8/CSe;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 35
    :cond_0
    iget-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    move v5, v2

    move v7, v6

    invoke-static/range {v0 .. v7}, Lc8/JSe;->canonicalize(Lc8/YVp;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 37
    iget-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lc8/YVp;->writeByte(I)Lc8/YVp;

    .line 38
    iget-object v0, p0, Lc8/CSe;->content:Lc8/YVp;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p2

    move v5, v2

    move v7, v6

    invoke-static/range {v0 .. v7}, Lc8/JSe;->canonicalize(Lc8/YVp;Ljava/lang/String;IILjava/lang/String;ZZZ)V

    .line 40
    return-object p0
.end method

.method public build()Lc8/ZSe;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lc8/CSe;->CONTENT_TYPE:Lc8/MSe;

    iget-object v1, p0, Lc8/CSe;->content:Lc8/YVp;

    invoke-virtual {v1}, Lc8/YVp;->snapshot()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZSe;->create(Lc8/MSe;Lokio/ByteString;)Lc8/ZSe;

    move-result-object v0

    return-object v0
.end method

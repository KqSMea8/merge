.class public Lc8/bcf;
.super Ljava/lang/Object;
.source "NavUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/acf;
    }
.end annotation


# instance fields
.field protected mBuilder:Landroid/net/Uri$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    .line 88
    return-void
.end method

.method public static host(Ljava/lang/String;)Lc8/bcf;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Lc8/bcf;

    invoke-direct {v0}, Lc8/bcf;-><init>()V

    .line 27
    .local v0, "nav_uri":Lc8/bcf;
    iget-object v1, v0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 28
    return-object v0
.end method

.method public static scheme(Ljava/lang/String;)Lc8/acf;
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lc8/bcf;

    invoke-direct {v0}, Lc8/bcf;-><init>()V

    .line 15
    .local v0, "nav_uri":Lc8/bcf;
    iget-object v1, v0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 16
    new-instance v1, Lc8/Zbf;

    invoke-direct {v1, v0}, Lc8/Zbf;-><init>(Lc8/bcf;)V

    return-object v1
.end method


# virtual methods
.method build()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Ljava/lang/String;)Lc8/bcf;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    return-object p0
.end method

.method public param(Ljava/lang/String;I)Lc8/bcf;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    return-object p0
.end method

.method public param(Ljava/lang/String;J)Lc8/bcf;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lc8/bcf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    return-object p0
.end method

.method public path(Ljava/lang/String;)Lc8/bcf;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 39
    return-object p0
.end method

.method public segment(I)Lc8/bcf;
    .locals 2
    .param p1, "new_segment"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    return-object p0
.end method

.method public segment(J)Lc8/bcf;
    .locals 3
    .param p1, "new_segment"    # J

    .prologue
    .line 50
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    return-object p0
.end method

.method public segment(Ljava/lang/String;)Lc8/bcf;
    .locals 1
    .param p1, "new_segment"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lc8/bcf;->mBuilder:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 45
    return-object p0
.end method

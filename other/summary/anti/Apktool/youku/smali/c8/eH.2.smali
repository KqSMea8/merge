.class public Lc8/eH;
.super Ljava/lang/Object;
.source "ZipAppSecurityUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageApp-ZipAppSecurityUtils"

.field private static final key:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validConfigFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "config"    # Ljava/lang/String;
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAr4QTVnTHJ/W1hfBkEfTdWMMAxsQHW22gK0JProk3hmdwwal+Up7Ty/8NUXs+8SKufik2ASXQLFkqeoZu60sXmtlQGZJ+kAezC8pS9MboHZWywO9VJwxRUQuXI/Hn0jjZsA8tZPpN6Ty9wkz80GrQJrRuhjEjT0JAjElhpZUxTXMKIIPqM+ndgcfF55f9wWYFKW+o/Z0Nil0yP1crvLryq3sbSbDTnz7+j4zUE7aCGb0ECyS/ii1o53C08YKyhzpSTICSzILvHMdHFHGeuH1LfrinuLYdyORlC0f6qoSODBSaXO7UI+uHxhb6K3e1YzUYsMRuEjyDUTETeT/b07LIgwIDAQAB"

    invoke-static {v3}, Lc8/VH;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    invoke-static {p1, v3}, Lc8/VH;->decryptData(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "hash":Ljava/lang/String;
    invoke-static {p0}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 40
    .end local v1    # "hash":Ljava/lang/String;
    :goto_0
    return v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PackageApp-ZipAppSecurityUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decrypt fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x0

    goto :goto_0
.end method

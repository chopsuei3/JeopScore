.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final YAV_SKEW:I = 0x1


# instance fields
.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(ILjava/io/File;Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 3
    .parameter "port"
    .parameter "wwwroot"
    .parameter "form"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 32
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 33
    const-string v1, "scheme"

    invoke-static {v1}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 35
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    const-string v2, "(begin (require com.google.youngandroid.runtime)  (setup-repl-environment \"<<\" \":\" \"@@\" \"Success\" \"Failure\" \"==\" \">>\" \'((\">>\" \"&2\")(\"<<\" \"&1\")(\"&\" \"&0\"))))"

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 39
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "infile"
    .parameter "outfile"

    .prologue
    .line 147
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .local v4, out:Ljava/io/FileOutputStream;
    const v5, 0x8000

    new-array v0, v5, [B

    .line 152
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_0

    .line 153
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #len:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 159
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 161
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 156
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #len:I
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 157
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 21
    .parameter "uri"
    .parameter "method"
    .parameter "header"
    .parameter "parms"
    .parameter "files"

    .prologue
    .line 53
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    const-string v18, "/_version"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 71
    :try_start_0
    const-string v18, "version"

    const-string v19, "0"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 72
    .local v14, strversion:Ljava/lang/String;
    new-instance v18, Ljava/lang/Integer;

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 73
    .local v17, version:I
    const/16 v18, 0x48

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    const/16 v18, 0x46

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v18, v0

    const-string v19, "(begin (require com.google.youngandroid.runtime) (process-repl-input ((get-var badversion)) \"foo\"))"

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    :goto_0
    new-instance v13, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v18, "200 OK"

    const-string v19, "text/plain"

    const-string v20, "OK"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v14           #strversion:Ljava/lang/String;
    .end local v17           #version:I
    .local v13, res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_1
    move-object/from16 v18, v13

    .line 142
    .end local v13           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_2
    return-object v18

    .line 80
    .restart local v14       #strversion:Ljava/lang/String;
    .restart local v17       #version:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    move-object/from16 v18, v0

    const-string v19, "(begin (require com.google.youngandroid.runtime) (process-repl-input ((get-var *start-repl*)) \"foo\"))"

    invoke-virtual/range {v18 .. v19}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v14           #strversion:Ljava/lang/String;
    .end local v17           #version:I
    :catch_0
    move-exception v18

    move-object/from16 v5, v18

    .line 84
    .local v5, e:Ljava/lang/Throwable;
    new-instance v13, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v18, "200 OK"

    const-string v19, "text/plain"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .restart local v13       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v5           #e:Ljava/lang/Throwable;
    .end local v13           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_2
    const-string v18, "/_package"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 90
    const-string v18, "package"

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .local v11, packageapk:Ljava/lang/String;
    if-nez v11, :cond_3

    .line 92
    new-instance v13, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v18, "200 OK"

    const-string v19, "text/plain"

    const-string v20, "NOT OK"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v13       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    move-object/from16 v18, v13

    .line 93
    goto :goto_2

    .line 95
    .end local v13           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_3
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    new-instance v10, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v10, intent:Landroid/content/Intent;
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 98
    .local v12, packageuri:Landroid/net/Uri;
    const-string v18, "application/vnd.android.package-archive"

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 100
    new-instance v13, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v18, "200 OK"

    const-string v19, "text/plain"

    const-string v20, "OK"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v13       #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    move-object/from16 v18, v13

    .line 101
    goto/16 :goto_2

    .line 104
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #packageapk:Ljava/lang/String;
    .end local v12           #packageuri:Landroid/net/Uri;
    .end local v13           #res:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    .line 105
    .local v5, e:Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 107
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 108
    .local v16, value:Ljava/lang/String;
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  HDR: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' = \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 111
    .end local v16           #value:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    .line 112
    :goto_4
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 114
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 115
    .restart local v16       #value:Ljava/lang/String;
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  PRM: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' = \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 118
    .end local v16           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v5

    .line 119
    :goto_5
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 121
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, fieldname:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, tempLocation:Ljava/lang/String;
    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, filename:Ljava/lang/String;
    const-string v18, ".."

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, ".."

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const-string v18, "../"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_8

    .line 126
    :cond_7
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Ignoring invalid filename: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    const/4 v9, 0x0

    .line 129
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, fileFrom:Ljava/io/File;
    if-nez v9, :cond_a

    .line 131
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 139
    :cond_9
    :goto_6
    sget-object v18, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " UPLOADED: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' was at \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 133
    :cond_a
    new-instance v8, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v8, fileTo:Ljava/io/File;
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 135
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 136
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 142
    .end local v6           #fieldname:Ljava/lang/String;
    .end local v7           #fileFrom:Ljava/io/File;
    .end local v8           #fileTo:Ljava/io/File;
    .end local v9           #filename:Ljava/lang/String;
    .end local v15           #tempLocation:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v18

    goto/16 :goto_2
.end method

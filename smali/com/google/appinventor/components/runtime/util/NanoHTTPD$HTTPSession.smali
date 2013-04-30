.class Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTTPSession"
.end annotation


# instance fields
.field private mySocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 2
    .parameter
    .parameter "s"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    .line 311
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 314
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 11
    .parameter "in"
    .parameter "pre"
    .parameter "parms"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 475
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, inLine:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 520
    .end local v0           #inLine:Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    .restart local v0       #inLine:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 478
    .local v6, st:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .line 479
    const-string v8, "400 Bad Request"

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, method:Ljava/lang/String;
    const-string v8, "method"

    invoke-virtual {p2, v8, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2

    .line 485
    const-string v8, "400 Bad Request"

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 490
    .local v7, uri:Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 491
    .local v5, qmi:I
    if-ltz v5, :cond_4

    .line 493
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 494
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 504
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, line:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 507
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 508
    .local v4, p:I
    if-ltz v4, :cond_3

    .line 509
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p4, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 511
    goto :goto_2

    .line 496
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #p:I
    :cond_4
    invoke-direct {p0, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 514
    :cond_5
    const-string v8, "uri"

    invoke-virtual {p2, v8, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 516
    .end local v0           #inLine:Ljava/lang/String;
    .end local v3           #method:Ljava/lang/String;
    .end local v5           #qmi:I
    .end local v6           #st:Ljava/util/StringTokenizer;
    .end local v7           #uri:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 518
    .local v1, ioe:Ljava/io/IOException;
    const-string v8, "500 Internal Server Error"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 22
    .parameter "boundary"
    .parameter "fbuf"
    .parameter "in"
    .parameter "parms"
    .parameter "files"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 531
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->getBoundaryPositions([B[B)[I

    move-result-object v5

    .line 532
    .local v5, bpositions:[I
    const/4 v4, 0x1

    .line 533
    .local v4, boundarycount:I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, mpline:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v11, :cond_6

    .line 536
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 537
    const-string v19, "400 Bad Request"

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 539
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 540
    .local v10, item:Ljava/util/Properties;
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 541
    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_3

    .line 543
    const/16 v19, 0x3a

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 544
    .local v13, p:I
    const/16 v19, -0x1

    move v0, v13

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 545
    const/16 v19, 0x0

    move-object v0, v11

    move/from16 v1, v19

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v13, 0x1

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 547
    goto :goto_1

    .line 548
    .end local v13           #p:I
    :cond_3
    if-eqz v11, :cond_0

    .line 550
    const-string v19, "content-disposition"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, contentDisposition:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 553
    const-string v19, "400 Bad Request"

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_4
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v19, "; "

    move-object/from16 v0, v16

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v16, st:Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 557
    .local v8, disposition:Ljava/util/Properties;
    :cond_5
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 559
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 560
    .local v17, token:Ljava/lang/String;
    const/16 v19, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 561
    .restart local v13       #p:I
    const/16 v19, -0x1

    move v0, v13

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 562
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 599
    .end local v4           #boundarycount:I
    .end local v5           #bpositions:[I
    .end local v6           #contentDisposition:Ljava/lang/String;
    .end local v8           #disposition:Ljava/util/Properties;
    .end local v10           #item:Ljava/util/Properties;
    .end local v11           #mpline:Ljava/lang/String;
    .end local v13           #p:I
    .end local v16           #st:Ljava/util/StringTokenizer;
    .end local v17           #token:Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v9, v19

    .line 601
    .local v9, ioe:Ljava/io/IOException;
    const-string v19, "500 Internal Server Error"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v9           #ioe:Ljava/io/IOException;
    :cond_6
    return-void

    .line 564
    .restart local v4       #boundarycount:I
    .restart local v5       #bpositions:[I
    .restart local v6       #contentDisposition:Ljava/lang/String;
    .restart local v8       #disposition:Ljava/util/Properties;
    .restart local v10       #item:Ljava/util/Properties;
    .restart local v11       #mpline:Ljava/lang/String;
    .restart local v16       #st:Ljava/util/StringTokenizer;
    :cond_7
    :try_start_1
    const-string v19, "name"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 565
    .local v15, pname:Ljava/lang/String;
    const/16 v19, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 567
    const-string v18, ""

    .line 568
    .local v18, value:Ljava/lang/String;
    const-string v19, "content-type"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_a

    .line 569
    :cond_8
    :goto_3
    if-eqz v11, :cond_d

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 571
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 572
    if-eqz v11, :cond_8

    .line 574
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 575
    .local v7, d:I
    const/16 v19, -0x1

    move v0, v7

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 576
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 578
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x2

    sub-int v21, v7, v21

    move-object v0, v11

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 584
    .end local v7           #d:I
    :cond_a
    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move v0, v4

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 585
    const-string v19, "500 Internal Server Error"

    const-string v20, "Error processing request"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_b
    const/16 v19, 0x2

    sub-int v19, v4, v19

    aget v19, v5, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->stripMultipartHeaders([BI)I

    move-result v12

    .line 587
    .local v12, offset:I
    const/16 v19, 0x1

    sub-int v19, v4, v19

    aget v19, v5, v19

    sub-int v19, v19, v12

    const/16 v20, 0x4

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v12

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->saveTmpFile([BII)Ljava/lang/String;

    move-result-object v14

    .line 588
    .local v14, path:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object v1, v15

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v19, "filename"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 590
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    sub-int v20, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 592
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 593
    if-eqz v11, :cond_d

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 595
    .end local v12           #offset:I
    .end local v14           #path:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p4

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5
    .parameter "parms"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 727
    if-nez p1, :cond_1

    .line 739
    :cond_0
    return-void

    .line 730
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .local v2, st:Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, e:Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 735
    .local v1, sep:I
    if-ltz v1, :cond_2

    .line 736
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 691
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 694
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 704
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 691
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :sswitch_0
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 710
    .end local v0           #c:C
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 712
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "400 Bad Request"

    const-string v5, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v4, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v4

    .line 700
    .restart local v0       #c:C
    .restart local v2       #i:I
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :sswitch_1
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x3

    :try_start_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 701
    add-int/lit8 v2, v2, 0x2

    .line 702
    goto :goto_1

    .line 708
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    .line 694
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private saveTmpFile([BII)Ljava/lang/String;
    .locals 8
    .parameter "b"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 649
    const-string v2, ""

    .line 650
    .local v2, path:Ljava/lang/String;
    if-lez p3, :cond_0

    .line 652
    const-string v5, "java.io.tmpdir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 654
    .local v4, tmpdir:Ljava/lang/String;
    :try_start_0
    const-string v5, "NanoHTTPD"

    const-string v6, ""

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 655
    .local v3, temp:Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 656
    .local v1, fstream:Ljava/io/OutputStream;
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 657
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 658
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 663
    .end local v1           #fstream:Ljava/io/OutputStream;
    .end local v3           #temp:Ljava/io/File;
    .end local v4           #tmpdir:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 659
    .restart local v4       #tmpdir:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 660
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 747
    const-string v0, "text/plain"

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 748
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 16
    .parameter "status"
    .parameter "mime"
    .parameter "header"
    .parameter "data"

    .prologue
    .line 758
    if-nez p1, :cond_1

    .line 759
    :try_start_0
    new-instance v13, Ljava/lang/Error;

    const-string v14, "sendResponse(): Status can\'t be null."

    invoke-direct {v13, v14}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :catch_0
    move-exception v13

    move-object v6, v13

    .line 805
    .local v6, ioe:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 807
    .end local v6           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 762
    .local v8, out:Ljava/io/OutputStream;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 763
    .local v10, pw:Ljava/io/PrintWriter;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP/1.0 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    if-eqz p2, :cond_2

    .line 766
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    :cond_2
    if-eqz p3, :cond_3

    const-string v13, "Date"

    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_4

    .line 769
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Date: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    :cond_4
    if-eqz p3, :cond_5

    .line 773
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 774
    .local v5, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 776
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 777
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 778
    .local v12, value:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\r\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 782
    .end local v5           #e:Ljava/util/Enumeration;
    .end local v7           #key:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_5
    const-string v13, "\r\n"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 785
    if-eqz p4, :cond_6

    .line 787
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 788
    .local v9, pending:I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$200()I

    move-result v13

    new-array v4, v13, [B

    .line 789
    .local v4, buff:[B
    :goto_2
    if-lez v9, :cond_6

    .line 791
    const/4 v13, 0x0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$200()I

    move-result v14

    if-le v9, v14, :cond_7

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$200()I

    move-result v14

    :goto_3
    move-object/from16 v0, p4

    move-object v1, v4

    move v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 792
    .local v11, read:I
    if-gtz v11, :cond_8

    .line 797
    .end local v4           #buff:[B
    .end local v9           #pending:I
    .end local v11           #read:I
    :cond_6
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 798
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 799
    if-eqz p4, :cond_0

    .line 800
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .restart local v4       #buff:[B
    .restart local v9       #pending:I
    :cond_7
    move v14, v9

    .line 791
    goto :goto_3

    .line 793
    .restart local v11       #read:I
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v8, v4, v13, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 794
    sub-int/2addr v9, v11

    .line 795
    goto :goto_2

    .line 805
    .end local v4           #buff:[B
    .end local v8           #out:Ljava/io/OutputStream;
    .end local v9           #pending:I
    .end local v10           #pw:Ljava/io/PrintWriter;
    .end local v11           #read:I
    .restart local v6       #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private stripMultipartHeaders([BI)I
    .locals 4
    .parameter "b"
    .parameter "offset"

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, i:I
    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 676
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_1

    .line 679
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 674
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBoundaryPositions([B[B)[I
    .locals 7
    .parameter "b"
    .parameter "boundary"

    .prologue
    .line 610
    const/4 v3, 0x0

    .line 611
    .local v3, matchcount:I
    const/4 v1, -0x1

    .line 612
    .local v1, matchbyte:I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 613
    .local v2, matchbytes:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 615
    aget-byte v5, p1, v0

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_2

    .line 617
    if-nez v3, :cond_0

    .line 618
    move v1, v0

    .line 619
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 620
    array-length v5, p2

    if-ne v3, v5, :cond_1

    .line 622
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 623
    const/4 v3, 0x0

    .line 624
    const/4 v1, -0x1

    .line 613
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 629
    :cond_2
    sub-int/2addr v0, v3

    .line 630
    const/4 v3, 0x0

    .line 631
    const/4 v1, -0x1

    goto :goto_1

    .line 634
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 635
    .local v4, ret:[I
    const/4 v0, 0x0

    .end local p0
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 637
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 639
    :cond_4
    return-object v4
.end method

.method public run()V
    .locals 40

    .prologue
    .line 320
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    .line 321
    .local v28, is:Ljava/io/InputStream;
    if-nez v28, :cond_1

    .line 464
    .end local v28           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 326
    .restart local v28       #is:Ljava/io/InputStream;
    :cond_1
    const/16 v20, 0x2000

    .line 327
    .local v20, bufsize:I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 328
    .local v19, buf:[B
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move v2, v5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v34

    .line 329
    .local v34, rlen:I
    if-lez v34, :cond_0

    .line 332
    new-instance v25, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move v2, v5

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 333
    .local v25, hbis:Ljava/io/ByteArrayInputStream;
    new-instance v26, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 334
    .local v26, hin:Ljava/io/BufferedReader;
    new-instance v31, Ljava/util/Properties;

    invoke-direct/range {v31 .. v31}, Ljava/util/Properties;-><init>()V

    .line 335
    .local v31, pre:Ljava/util/Properties;
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 336
    .local v9, parms:Ljava/util/Properties;
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 337
    .local v14, header:Ljava/util/Properties;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 340
    .local v10, files:Ljava/util/Properties;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    move-object v3, v9

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 341
    const-string v5, "method"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, method:Ljava/lang/String;
    const-string v5, "uri"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 344
    .local v12, uri:Ljava/lang/String;
    const-wide v36, 0x7fffffffffffffffL

    .line 345
    .local v36, size:J
    const-string v5, "content-length"

    invoke-virtual {v14, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v21

    .line 346
    .local v21, contentLength:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 348
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 354
    :cond_2
    :goto_1
    const/16 v38, 0x0

    .line 355
    .local v38, splitbyte:I
    const/16 v35, 0x0

    .line 356
    .local v35, sbfound:Z
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 358
    :try_start_2
    aget-byte v5, v19, v38

    const/16 v6, 0xd

    if-ne v5, v6, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v5, v19, v38

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v5, v19, v38

    const/16 v6, 0xd

    if-ne v5, v6, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v5, v19, v38

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    .line 359
    const/16 v35, 0x1

    .line 364
    :cond_3
    add-int/lit8 v38, v38, 0x1

    .line 367
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    .local v24, f:Ljava/io/ByteArrayOutputStream;
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    sub-int v5, v34, v38

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v38

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 376
    :cond_4
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    .line 377
    sub-int v5, v34, v38

    add-int/lit8 v5, v5, 0x1

    int-to-long v15, v5

    sub-long v36, v36, v15

    .line 382
    :cond_5
    :goto_3
    const/16 v5, 0x200

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 383
    :cond_6
    :goto_4
    if-ltz v34, :cond_a

    const-wide/16 v15, 0x0

    cmp-long v5, v36, v15

    if-lez v5, :cond_a

    .line 385
    const/4 v5, 0x0

    const/16 v6, 0x200

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v34

    .line 386
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v15, v0

    sub-long v36, v36, v15

    .line 387
    if-lez v34, :cond_6

    .line 388
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move v2, v5

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 452
    .end local v9           #parms:Ljava/util/Properties;
    .end local v10           #files:Ljava/util/Properties;
    .end local v12           #uri:Ljava/lang/String;
    .end local v13           #method:Ljava/lang/String;
    .end local v14           #header:Ljava/util/Properties;
    .end local v19           #buf:[B
    .end local v20           #bufsize:I
    .end local v21           #contentLength:Ljava/lang/String;
    .end local v24           #f:Ljava/io/ByteArrayOutputStream;
    .end local v25           #hbis:Ljava/io/ByteArrayInputStream;
    .end local v26           #hin:Ljava/io/BufferedReader;
    .end local v28           #is:Ljava/io/InputStream;
    .end local v31           #pre:Ljava/util/Properties;
    .end local v34           #rlen:I
    .end local v35           #sbfound:Z
    .end local v36           #size:J
    .end local v38           #splitbyte:I
    :catch_0
    move-exception v5

    move-object/from16 v27, v5

    .line 456
    .local v27, ioe:Ljava/io/IOException;
    :try_start_3
    const-string v5, "500 Internal Server Error"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 458
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 362
    .end local v27           #ioe:Ljava/io/IOException;
    .restart local v9       #parms:Ljava/util/Properties;
    .restart local v10       #files:Ljava/util/Properties;
    .restart local v12       #uri:Ljava/lang/String;
    .restart local v13       #method:Ljava/lang/String;
    .restart local v14       #header:Ljava/util/Properties;
    .restart local v19       #buf:[B
    .restart local v20       #bufsize:I
    .restart local v21       #contentLength:Ljava/lang/String;
    .restart local v25       #hbis:Ljava/io/ByteArrayInputStream;
    .restart local v26       #hin:Ljava/io/BufferedReader;
    .restart local v28       #is:Ljava/io/InputStream;
    .restart local v31       #pre:Ljava/util/Properties;
    .restart local v34       #rlen:I
    .restart local v35       #sbfound:Z
    .restart local v36       #size:J
    .restart local v38       #splitbyte:I
    :cond_7
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 378
    .restart local v24       #f:Ljava/io/ByteArrayOutputStream;
    :cond_8
    if-eqz v35, :cond_9

    const-wide v15, 0x7fffffffffffffffL

    cmp-long v5, v36, v15

    if-nez v5, :cond_5

    .line 379
    :cond_9
    const-wide/16 v36, 0x0

    goto :goto_3

    .line 392
    :cond_a
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 395
    .local v7, fbuf:[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 396
    .local v17, bin:Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 400
    .local v8, in:Ljava/io/BufferedReader;
    const-string v5, "POST"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 402
    const-string v22, ""

    .line 403
    .local v22, contentType:Ljava/lang/String;
    const-string v5, "content-type"

    invoke-virtual {v14, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 404
    .local v23, contentTypeHeader:Ljava/lang/String;
    new-instance v39, Ljava/util/StringTokenizer;

    const-string v5, "; "

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v39, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 406
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    .line 409
    :cond_b
    const-string v5, "multipart/form-data"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 412
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_c

    .line 413
    const-string v5, "400 Bad Request"

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_c
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 415
    .local v18, boundaryExp:Ljava/lang/String;
    new-instance v39, Ljava/util/StringTokenizer;

    .end local v39           #st:Ljava/util/StringTokenizer;
    const-string v5, "="

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .restart local v39       #st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    .line 417
    const-string v5, "400 Bad Request"

    const-string v6, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_d
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 419
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .local v6, boundary:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 421
    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 439
    .end local v6           #boundary:Ljava/lang/String;
    .end local v18           #boundaryExp:Ljava/lang/String;
    .end local v22           #contentType:Ljava/lang/String;
    .end local v23           #contentTypeHeader:Ljava/lang/String;
    .end local v39           #st:Ljava/util/StringTokenizer;
    :cond_e
    :goto_5
    const-string v5, "PUT"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 440
    const-string v5, "content"

    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->saveTmpFile([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move-object v11, v0

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v32

    .line 444
    .local v32, r:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    if-nez v32, :cond_12

    .line 445
    const-string v5, "500 Internal Server Error"

    const-string v6, "SERVER INTERNAL ERROR: Serve() returned a null response."

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .end local v7           #fbuf:[B
    .end local v9           #parms:Ljava/util/Properties;
    :goto_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 450
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 460
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v10           #files:Ljava/util/Properties;
    .end local v12           #uri:Ljava/lang/String;
    .end local v13           #method:Ljava/lang/String;
    .end local v14           #header:Ljava/util/Properties;
    .end local v17           #bin:Ljava/io/ByteArrayInputStream;
    .end local v19           #buf:[B
    .end local v20           #bufsize:I
    .end local v21           #contentLength:Ljava/lang/String;
    .end local v24           #f:Ljava/io/ByteArrayOutputStream;
    .end local v25           #hbis:Ljava/io/ByteArrayInputStream;
    .end local v26           #hin:Ljava/io/BufferedReader;
    .end local v28           #is:Ljava/io/InputStream;
    .end local v31           #pre:Ljava/util/Properties;
    .end local v32           #r:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34           #rlen:I
    .end local v35           #sbfound:Z
    .end local v36           #size:J
    .end local v38           #splitbyte:I
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 426
    .restart local v7       #fbuf:[B
    .restart local v8       #in:Ljava/io/BufferedReader;
    .restart local v9       #parms:Ljava/util/Properties;
    .restart local v10       #files:Ljava/util/Properties;
    .restart local v12       #uri:Ljava/lang/String;
    .restart local v13       #method:Ljava/lang/String;
    .restart local v14       #header:Ljava/util/Properties;
    .restart local v17       #bin:Ljava/io/ByteArrayInputStream;
    .restart local v19       #buf:[B
    .restart local v20       #bufsize:I
    .restart local v21       #contentLength:Ljava/lang/String;
    .restart local v22       #contentType:Ljava/lang/String;
    .restart local v23       #contentTypeHeader:Ljava/lang/String;
    .restart local v24       #f:Ljava/io/ByteArrayOutputStream;
    .restart local v25       #hbis:Ljava/io/ByteArrayInputStream;
    .restart local v26       #hin:Ljava/io/BufferedReader;
    .restart local v28       #is:Ljava/io/InputStream;
    .restart local v31       #pre:Ljava/util/Properties;
    .restart local v34       #rlen:I
    .restart local v35       #sbfound:Z
    .restart local v36       #size:J
    .restart local v38       #splitbyte:I
    .restart local v39       #st:Ljava/util/StringTokenizer;
    :cond_10
    const-string v30, ""

    .line 427
    .local v30, postLine:Ljava/lang/String;
    const/16 v5, 0x200

    move v0, v5

    new-array v0, v0, [C

    move-object/from16 v29, v0

    .line 428
    .local v29, pbuf:[C
    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v33

    .line 429
    .local v33, read:I
    :goto_7
    if-ltz v33, :cond_11

    const-string v5, "\r\n"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v29

    move v1, v6

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 432
    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v33

    goto :goto_7

    .line 434
    :cond_11
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 435
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    goto/16 :goto_5

    .line 447
    .end local v22           #contentType:Ljava/lang/String;
    .end local v23           #contentTypeHeader:Ljava/lang/String;
    .end local v29           #pbuf:[C
    .end local v30           #postLine:Ljava/lang/String;
    .end local v33           #read:I
    .end local v39           #st:Ljava/util/StringTokenizer;
    .restart local v32       #r:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_12
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    move-object v7, v0

    .end local v7           #fbuf:[B
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    move-object v9, v0

    .end local v9           #parms:Ljava/util/Properties;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    .line 349
    .end local v8           #in:Ljava/io/BufferedReader;
    .end local v17           #bin:Ljava/io/ByteArrayInputStream;
    .end local v24           #f:Ljava/io/ByteArrayOutputStream;
    .end local v32           #r:Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35           #sbfound:Z
    .end local v38           #splitbyte:I
    .restart local v9       #parms:Ljava/util/Properties;
    :catch_3
    move-exception v5

    goto/16 :goto_1
.end method
